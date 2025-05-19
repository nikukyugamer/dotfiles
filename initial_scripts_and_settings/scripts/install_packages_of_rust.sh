#!/usr/bin/env bash

function install_cargo_first_time() {
  echo '======================================================='
  echo "[LOG (START)] $ cargo install $1 --locked"
  echo '======================================================='
  cargo install "$1" --locked
  echo '======================================================='
  echo "[LOG (END)] $ cargo install $1 --locked"
  echo '======================================================='

  echo
}

function cargo_install_update() {
  local package_name="$1"

  echo '======================================================='
  echo "[LOG (START)] $ cargo install-update $package_name"
  echo '======================================================='
  cargo install-update "$package_name"
  echo '======================================================='
  echo "[LOG (END)] $ cargo install-update $package_name"
  echo '======================================================='

  echo
}

# 複数の箇所で用いるため、対象のパッケージ名を配列で持つ
# 追加や削除はここに対して行う
TARGET_PACKAGE_NAMES=(
  ag
  bat
  bottom
  broot
  cargo-update
  diskonaut
  du-dust
  exa
  fd-find
  git-delta
  git-interactive-rebase-tool
  gitui # https://github.com/extrawurst/gitui
  grex
  hyperfine
  kiro-editor
  macchina # https://github.com/Macchina-CLI/macchina
  procs
  # https://github.com/dathere/qsv
  # "--features python" オプションは、Python のバージョンによってはインストールに失敗するので原則として外すことにする
  # qsv
  railwayapp
  ripgrep
  ripgrep_all # ffmpeg などが必要
  sd # Alt "sed" https://github.com/chmln/sd
  simple-http-server
  tailspin # https://github.com/bensadeh/tailspin (A log file highlighter)
  tealdeer
  tokei # https://github.com/XAMPPRocky/tokei
  xcompress
  xh # https://github.com/ducaale/xh
  yazi-fm
  yazi-cli # https://yazi-rs.github.io/
)

# 現在のインストール状況の一覧を表示する
$(which cargo) install-update --list
echo

# 初期インストールを実行する
# TODO: すでにインストールされている場合は時間の無駄になるのでスキップしたい
for package_name in "${TARGET_PACKAGE_NAMES[@]}"; do
  install_cargo_first_time "$package_name"
done

# アップデート時に実行する
for package_name in "${TARGET_PACKAGE_NAMES[@]}"; do
  # tealdeer は CLI から直接更新する
  if [ "$package_name" = "tealdeer" ]; then
    continue
  fi

  if [ "$package_name" = "qsv" ]; then
    # NOTE: 一時的対応
    # 依存関係の影響上、インストールに失敗するため、https://github.com/YS-L/csvlens のバージョンでインストール可否を判別する
    # cf. https://github.com/dathere/qsv/issues/2543
    # cf. https://github.com/dathere/qsv/issues/2574
    # cf. https://github.com/dathere/qsv/issues/2582
    CSVLENS_VERSION=$(cargo search csvlens | grep "csvlens = " | sed -E "s/csvlens = \"([0-9]+\.[0-9]+\.[0-9]+)\".*/\1/")
    if [ "$CSVLENS_VERSION" != "0.12.0" ]; then
      echo
      echo 'Install "qsv"'
      cargo install qsv --locked --bin qsv --features feature_capable,apply,fetch,foreach,geocode,luau,polars,self_update,ui
    fi
  fi

  cargo_install_update "$package_name"
done

# tealdeer は CLI から直接更新する
echo
echo '======================================================='
echo '[LOG (START)] Update tealdeer "$ tldr --update"'
echo '======================================================='
$(which tldr) --update
echo '======================================================='
echo '[LOG (END)] Update tealdeer "$ tldr --update"'
echo '======================================================='
echo

# uv は直接リポジトリを指定してインストールする必要がある
echo
echo '======================================================='
echo '[LOG (START)] Install or Update "uv"'
echo '======================================================='
# https://docs.astral.sh/uv/getting-started/installation/#cargo
cargo install --git https://github.com/astral-sh/uv uv
echo '======================================================='
echo '[LOG (END)] Install or Update "uv"'
echo '======================================================='
echo

exit 0
