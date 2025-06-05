#!/usr/bin/env bash

function install_cargo_first_time() {
  echo '======================================================='
  echo "[LOG (START)] $ cargo install --locked $1"
  echo '======================================================='
  cargo install --locked "$1"
  echo '======================================================='
  echo "[LOG (END)] $ cargo install --locked $1"
  echo '======================================================='

  echo
}

# "cargo-update" を用いてアップデートする
function cargo_install_update() {
  local package_name="$1"

  echo '======================================================='
  echo "[LOG (START)] $ cargo install-update --locked -- $package_name"
  echo '======================================================='
  cargo install-update --locked -- "$package_name"
  echo '======================================================='
  echo "[LOG (END)] $ cargo install-update --locked -- $package_name"
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
# アルファベット順が原則だが、優先度が高いものは上に配置する
TARGET_PACKAGE_NAMES=(
  bat # 優先度高 https://github.com/sharkdp/bat
  cargo-update # 優先度高 https://github.com/nabijaczleweli/cargo-update
  lsd # 優先度高 https://github.com/lsd-rs/lsd
  starship # 優先度高 https://github.com/starship/starship
  ag # https://github.com/rcoh/angle-grinder
  bottom # Alt "top" https://github.com/ClementTsang/bottom
  broot # https://github.com/Canop/broot
  diskonaut # https://github.com/imsnif/diskonaut
  du-dust # https://github.com/bootandy/dust
  # eza # lsd から乗り換えるときはこれ https://github.com/eza-community/eza
  fd-find # https://github.com/sharkdp/fd
  git-delta # https://github.com/dandavison/delta
  git-interactive-rebase-tool # https://github.com/MitMaro/git-interactive-rebase-tool
  gitui # https://github.com/extrawurst/gitui
  grex # https://github.com/pemistahl/grex
  hyperfine # https://github.com/sharkdp/hyperfine
  macchina # https://github.com/Macchina-CLI/macchina
  monolith # https://github.com/Y2Z/monolith
  onefetch # https://github.com/o2sh/onefetch
  procs # https://github.com/dalance/procs
  railwayapp # https://github.com/railwayapp/cli
  ripgrep # https://github.com/BurntSushi/ripgrep
  ripgrep_all # ffmpeg などがインストールされていることが前提となる https://github.com/phiresky/ripgrep-all
  sd # Alt "sed" https://github.com/chmln/sd
  simple-http-server # https://github.com/TheWaWaR/simple-http-server
  tailspin # https://github.com/bensadeh/tailspin (A log file highlighter)
  tealdeer # https://github.com/tealdeer-rs/tealdeer
  tokei # https://github.com/XAMPPRocky/tokei
  xcompress # https://github.com/magiclen/xcompress
  xh # https://github.com/ducaale/xh
  yazi-fm # https://github.com/sxyazi/yazi
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
# $ cargo install --git だと毎回インストールされるので、コミットハッシュをチェックしてからインストールする
####################

# "qsv" のインストール
if command -v qsv >/dev/null 2>&1; then
  INSTALLED_VERSION=$(qsv --version | grep -o 'qsv [0-9]\+\.[0-9]\+\.[0-9]\+' | sed 's/qsv //')
else
  INSTALLED_VERSION=""
fi
LATEST_VERSION=$(curl -s https://api.github.com/repos/dathere/qsv/releases/latest | jq -r '.tag_name')

if [ "$LATEST_VERSION" != "$INSTALLED_VERSION" ]; then
  eco '======================================================='
  echo "[LOG (START)] $ cargo install --locked --git https://github.com/dathere/qsv qsv --features all_features"
  echo '======================================================='

  cargo install --git https://github.com/dathere/qsv qsv --features all_features

  echo '======================================================='
  echo "[LOG (END)] $ cargo install --locked --git https://github.com/dathere/qsv qsv --features all_features"
  echo '======================================================='
fi

# "uv" のインストール
if command -v uv >/dev/null 2>&1; then
  INSTALLED_VERSION=$(uv --version | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+')
else
  INSTALLED_VERSION=""
fi
LATEST_VERSION=$(curl -s https://api.github.com/repos/astral-sh/uv/releases/latest | jq -r '.tag_name')

if [ "$LATEST_VERSION" != "$INSTALLED_VERSION" ]; then
  echo '======================================================='
  echo "[LOG (START)] $ cargo install --locked --git https://github.com/astral-sh/uv uv"
  echo '======================================================='

  cargo install --locked --git https://github.com/astral-sh/uv uv

  echo '======================================================='
  echo "[LOG (END)] $ cargo install --locked --git https://github.com/astral-sh/uv uv"
  echo '======================================================='
fi

exit 0
