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
  zoxide # https://github.com/ajeetdsouza/zoxide
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


####################
# $ cargo install --git は毎回インストールされるのでコミットハッシュをチェックしてからインストールする
####################

# "qsv" のインストール
if command -v qsv >/dev/null 2>&1; then
  INSTALLED_VERSION=$(qsv --version | grep -o 'qsv [0-9]\+\.[0-9]\+\.[0-9]\+' | sed 's/qsv //')
else
  INSTALLED_VERSION=""
fi

LATEST_VERSION=$(curl -s https://api.github.com/repos/dathere/qsv/releases/latest | jq -r '.tag_name')

if [ "$LATEST_VERSION" != "$INSTALLED_VERSION" ]; then
  cargo install --git https://github.com/dathere/qsv qsv --features="feature_capable"
fi

# "uv" のインストール
if command -v uv >/dev/null 2>&1; then
  INSTALLED_VERSION=$(uv --version | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+')
else
  INSTALLED_VERSION=""
fi

LATEST_VERSION=$(curl -s https://api.github.com/repos/astral-sh/uv/releases/latest | jq -r '.tag_name')

if [ "$LATEST_VERSION" != "$INSTALLED_VERSION" ]; then
  cargo install --git https://github.com/astral-sh/uv uv
fi

exit 0
