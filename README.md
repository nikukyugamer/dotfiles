# dotfiles

- My `dotfiles`

## Neovim の導入

##### 1. インストールする

```bash
# apt や brew でインストールする
$ sudo apt install -y nvim
```

##### 2. ホームディレクトリに .vimrc を作る

```bash
$ ~/dotfiles/initial_scripts_and_settings/scripts/copy_settings/copy_setting_files.sh

# すでに .vimrc が存在している場合は慎重にマージする
$ mv ~/.vimrc.from_dotfiles ~/.vimrc

# 設定ファイルのシンボリックリンクの作成
$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim

# カラースキームの設定ファイルの作成
$ mkdir -p ~/.config/nvim/colors
$ curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.config/nvim/colors/molokai.vim
$ curl https://raw.githubusercontent.com/jacoborus/tender.vim/master/colors/tender.vim > ~/.config/nvim/colors/tender.vim
```

##### 3. vim-plug を入れる

```bash
$ ~/dotfiles/initial_scripts_and_settings/scripts/cli_installers/install_vim-plug.sh

# Neovim を立ち上げて ":PlugInstall" を実行する
$ nvim
```

##### 4. カラースキームの設定

- 上記を実行後に `~/.vimrc` を編集して `colorscheme` を確定して保存する
- 最後に改めて Neovim を起動して動作に問題がないことを確かめる
    - CSV の挙動を確かめるために `$ vim /tmp/example.csv` を実行し、カンマ区切りの複数行データを入力してみるのもいい

## mise で色々入れる

##### 1. 一覧表示

```bash
$ mise registry
```

##### 2. 最新バージョンチェック

```bash
# $ mise ls-remote でも同じ
$ mise list-remote bun
$ mise list-remote deno
$ mise list-remote ffmpeg
$ mise list-remote flutter
$ mise list-remote java
$ mise list-remote kotlin
$ mise list-remote swift
$ mise list-remote qsv
$ mise list-remote uv

# 移行検討中
$ mise list-remote go
$ mise list-remote imagemagick # macOS でビルドエラーになる
$ mise list-remote node
$ mise list-remote rust
```

##### 3. インストール

```bash
# $ mise i ffmpeg@7.1.1 でも同じ
$ mise install ffmpeg@7.1.1
```

##### 4. 常用設定

```bash
# $ mise u -g ffmpeg@7.1.1 も同じ
$ mise use --global ffmpeg@7.1.1
```

##### 5. 最新版が存在するかのチェック

```bash
$ mise outdated
```

## LICENSE

- [MIT LICENSE](/LICENSE)
