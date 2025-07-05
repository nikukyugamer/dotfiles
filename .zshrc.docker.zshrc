# Docker Volume
dvcreate() {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')

  # TODO: name や tag は判別のために自分で決められてもいいかも
  echo "[$ docker volume create --driver=local --name=xbox_volume_${CURRENT_DATETIME} '$@']"
  docker volume create --driver=local --name=xbox_volume_"$CURRENT_DATETIME" "$@"
}

# NOTE: mac の sed では "-z" が使えない
dvlss() {
  docker volume ls -q | peco | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g"
}

dvrm() {
  docker volume rm "$(dvlss)"
}

# Docker Image
dibuild() {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')

  echo '[$ docker image build --tag xbox_image_${CURRENT_DATETIME}:latest "$@"]'
  docker image build --tag xbox_image_"$CURRENT_DATETIME":latest "$@"
}

## イメージ名を peco で選択できるようにする
# NOTE: mac の sed では "-z" が使えない
dilss() {
  DILS_PECO=$(dils | peco)

  if [ $(echo $DILS_PECO | cut -d " " -f 1 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g") = '<none>:<none>' ]; then
    echo "$DILS_PECO" | cut -d " " -f 2 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g" | sed "s/(//g" | sed "s/)//g"
  else
    echo "$DILS_PECO" | cut -d " " -f 1 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g"
  fi
}

## peco 経由でイメージを選んでコマンドを実行する (ex. $ diexec inspect)
diexec() {
  echo '[$ docker image "$@" {{dilss}}]'
  docker image $@ $(dilss)
}

## イメージを一覧から選んで破壊する
dirm() {
  TARGET_IMAGE_NAME=$(dilss)

  echo '[$ docker image rm {{dilss}}]'
  echo "[REMOVED] ${TARGET_IMAGE_NAME}"
  docker image rm ${TARGET_IMAGE_NAME}
}

# Docker Container
## コンテナに /bin/sh で入る
dcsh() {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container start {{dclss}}]'
  docker container start ${TARGET_CONTAINER_NAME}
  echo '[$ docker container exec -it {{dclss}} /bin/sh]'
  docker container exec -it ${TARGET_CONTAINER_NAME} /bin/sh
}

## コンテナに /bin/bash で入る
dcbash() {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container start] {{dclss}}'
  docker container start ${TARGET_CONTAINER_NAME}
  echo '[$ docker container exec -it {{dclss}} /bin/bash]'
  docker container exec -it ${TARGET_CONTAINER_NAME} /bin/bash
}

## コンテナに /bin/zsh で入る
dczsh() {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container start {{dclss}}]'
  docker container start ${TARGET_CONTAINER_NAME}
  echo '[$ docker container exec -it {{dclss}} /bin/zsh]'
  docker container exec -it ${TARGET_CONTAINER_NAME} /bin/zsh
}

## 新たにコンテナを作成する（シェルは /bin/bash）
dccreate() {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')
  RANDOM_PORT_NUMBER=$(shuf -i 10000-65000 -n 1)

  echo '[$ docker container run -p ${RANDOM_PORT_NUMBER}:${RANDOM_PORT_NUMBER} "$@" {{dilss}} /bin/bash]'
  docker container run --name xbox_container_${CURRENT_DATETIME} --interactive --tty -p ${RANDOM_PORT_NUMBER}:${RANDOM_PORT_NUMBER} "$@" $(dilss) /bin/bash
}

## 新たにコンテナを作成する（シェルは /bin/sh）
dccreate_sh() {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')
  RANDOM_PORT_NUMBER=$(shuf -i 10000-65000 -n 1)

  echo '[$ docker container run -p ${RANDOM_PORT_NUMBER}:${RANDOM_PORT_NUMBER} "$@" {{dilss}} /bin/sh]'
  docker container run --name xbox_container_${CURRENT_DATETIME} --interactive --tty -p ${RANDOM_PORT_NUMBER}:${RANDOM_PORT_NUMBER} "$@" $(dilss) /bin/sh
}

## コンテナを実行してすぐにぶっ壊す
dcrun() {
  echo '[$ docker container run --rm "$@" {{dilss}}]'
  docker container run --rm "$@" $(dilss)
}

## コンテナを一覧から選んで破壊する
dcrm() {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container stop {{dclss}}]'
  echo "[STOPPED] ${TARGET_CONTAINER_NAME}"
  docker container stop ${TARGET_CONTAINER_NAME}

  echo '[$ docker container rm {{dclss}}]'
  echo "[REMOVED] ${TARGET_CONTAINER_NAME}"
  docker container rm ${TARGET_CONTAINER_NAME}
}

# Docker Compose
## cf. $ dcomexec web ls -la / $ DOCKER_COMPOSE_TARGET_SERVICE=web dcom ls
dcomexec() {
  TARGET_SERVICE=$DOCKER_COMPOSE_TARGET_SERVICE

  docker compose exec $TARGET_SERVICE $@
}

# エイリアスの設定
# Docker コマンド 一般
# cf. dc には計算コマンドもある (https://blanktar.jp/blog/2015/04/dc-calculate)
alias dc='docker container'
alias di='docker image'
alias dv='docker volume'

# Docker Volume
alias dvls='docker volume ls'

# Docker Image
## イメージ一覧を最小限の情報で表示する
alias dils='docker image ls --format "{{.Repository}}:{{.Tag}} ({{.ID}}) / {{.CreatedSince}}" | sed "/docker\/.*/d" | sed "/k8s.gcr.io\/.*/d" | sed "/.*<none>.*/d" | sed "/vsc-.*/d" | sort -h'

# Docker Container
## コンテナ一覧を最小限の情報で表示する
alias dcls='docker container ls --all --format "{{.State}}\t| {{.Names}} | {{.Image}} | {{.ID}}"'

## コンテナ名を peco で選択できるようにする（さらにパイプでクリップボードに渡すなどすると便利）
# NOTE: mac の sed では "-z" が使えない
alias dclss='dcls | peco | cut -d "|" -f 2 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g"'
alias DC='$(dclss)'

## コンテナ内でコマンドを実行する ($ dcexec ls -la)
alias dcexec='docker container exec -it $(docker container ls --all --format "{{.State}}\t| {{.Names}} | {{.Image}} | {{.ID}}" | peco | cut -d "|" -f 2) | sed "s/^[ \t]*//"'

# Docker Compose
## Docker Compose コマンドを簡単に扱えるようにする
alias dcom='docker compose'
