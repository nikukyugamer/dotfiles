#!/usr/bin/env bash
# https://rye.astral.sh/guide/installation/

rye self update

echo "Python のバージョン一覧を確認するためには $ rye toolchain list --include-downloadable を実行する。"
echo "新しい Python のバイナリをインストールするためには $ rye toolchain fetch 3.12.6 を実行する。"
echo "既存の Python のバイナリをアンインストールするためには $ rye toolchain remove --force 3.12.5 を実行する。"
echo "グローバルの Python のバージョンを変更するには ~/.rye/config.toml を編集する。"

exit 0
