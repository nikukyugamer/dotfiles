# dotfiles

- My `dotfiles`

## Neovim の導入

##### 1. インストールする

- apt や brew でインストールする

##### 2. ホームディレクトリに .vimrc を作る

```bash
$ initial_scripts_and_settings/scripts/copy_settings/copy_setting_files.sh

# すでに .vimrc が存在している場合は慎重にマージする
$ mv $HOME/.vimrc.from_dotfiles $HOME/.vimrc

# 設定ファイルのシンボリックリンクの作成
$ mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim

# カラースキームの設定ファイルの作成
$ curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.config/nvim/colors/molokai.vim
$ curl https://raw.githubusercontent.com/jacoborus/tender.vim/master/colors/tender.vim > ~/.config/nvim/colors/tender.vim
```

上記を実行後に `~/.vimrc` を編集して `colorscheme` を確定して保存する。

## LICENSE

- [MIT LICENSE](/LICENSE)
