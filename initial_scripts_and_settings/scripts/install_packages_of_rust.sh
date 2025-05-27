#!/usr/bin/env bash

function install_cargo_first_time() {
  echo '======================================================='
  echo "[LOG (START)] $ cargo install $1"
  echo '======================================================='
  cargo install "$1"
  echo '======================================================='
  echo "[LOG (END)] $ cargo install $1"
  echo '======================================================='

  echo
}

# "$1" は "URL バイナリ名" というテキストである
function install_cargo_first_time_via_git() {
  echo '======================================================='
  echo "[LOG (START)] $ cargo install --git $1"
  echo '======================================================='
  # SC2086: Double quote to prevent globbing and word splitting
  # shellcheck disable=SC2086
  cargo install --git $1
  echo '======================================================='
  echo "[LOG (END)] $ cargo install --git $1"
  echo '======================================================='

  echo
}

# "cargo-update" を用いてアップデートする
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

# パッケージがすでにインストールされているかをチェックする関数
function is_cargo_package_installed() {
  local package_name="$1"

  # cargo install --list の出力から該当パッケージがインストール済みかチェック
  if cargo install --list | grep -q "^$package_name "; then
    return 0  # インストール済み
  else
    return 1  # 未インストール
  fi
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
  monolith # https://github.com/Y2Z/monolith
  onefetch # https://github.com/o2sh/onefetch
  procs
  railwayapp
  ripgrep
  ripgrep_all # ffmpeg などがインストールされていることが前提となる
  sd # Alt "sed" https://github.com/chmln/sd
  simple-http-server
  starship
  tailspin # https://github.com/bensadeh/tailspin (A log file highlighter)
  tealdeer
  tokei # https://github.com/XAMPPRocky/tokei
  xcompress
  xh # https://github.com/ducaale/xh
  yazi-fm
  yazi-cli # https://yazi-rs.github.io/
  zoxide
)

# "URL バイナリ名" というテキストを配列で持つ
# ここに該当するバイナリは cargo install によりアップデートされるので cargo-update は不要（のはず）
TARGET_PACKAGE_URL_AND_BIN_NAME_STRINGS=(
  "https://github.com/astral-sh/uv uv"
)

# 現在のインストール状況の一覧を表示する
echo '現在のインストール状況の一覧を表示する'
$(which cargo) install-update --list

# 初期インストールコマンドを実行する
for package_name in "${TARGET_PACKAGE_NAMES[@]}"; do
  # インストールされていない場合のみ、インストールコマンドを実行する
  if ! is_cargo_package_installed "$package_name"; then
    install_cargo_first_time "$package_name"
  fi
done

# 初期インストールコマンドを実行する（"--git" の場合）
for url_and_bin_name in "${TARGET_PACKAGE_URL_AND_BIN_NAME_STRINGS[@]}"; do
  install_cargo_first_time_via_git "$url_and_bin_name"
done

# すでにインストールされているパッケージのアップデートを実行する
# cf. https://github.com/nabijaczleweli/cargo-update
for package_name in "${TARGET_PACKAGE_NAMES[@]}"; do
  cargo_install_update "$package_name"
done

# qsv は依存関係のバージョンの関係上、しばらくは下記コマンドでインストールする
# 本来は feature_capable,apply,fetch,foreach,geocode,luau,polars,self_update,ui の --features でインストールしたい
# "--features python" オプションは、Python のバージョンによってはインストールに失敗するので原則として外すことにする
# cf. https://github.com/dathere/qsv/blob/master/docs/FEATURES.md
# cf. https://github.com/YS-L/csvlens
# cf. https://github.com/dathere/qsv/issues/2543, https://github.com/dathere/qsv/issues/2574, https://github.com/dathere/qsv/issues/2582
cargo install qsv --locked --bin qsv --features feature_capable,apply,fetch,foreach,geocode,luau,self_update

exit 0
