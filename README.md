# Usage

#### ~/.vimrc
```.vimrc
source ~/dotfiles/.vimrc
```

#### .~/gitconfig
```.gitconfig
[include]
  path = ~/dotfiles/.gitconfig
```

#### .~/zshrc
- `alias` の三行は Optional

```.zshrc
source ~/dotfiles/.zshrc

alias vimvimrc='vim ~/dotfiles/.vimrc'
alias vimzshrc='vim ~/dotfiles/.zshrc'
alias vimgitconfig='vim ~/dotfiles/.gitconfig'
```

# Reference (thanks!)
- [dotfilesを一元管理するときにちょっと苦が減る方法 \- Qiita](https://qiita.com/syguer/items/334716c8ee6e5ad93f56)

# LICENSE
- [MIT LICENSE](LICENSE)
