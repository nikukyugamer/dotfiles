# Note
- As Japanese comments, it is necessary to run below command
    - if not running, the error occurs

```bash
$ sudo apt-get install -y language-pack-ja language-pack-ja-base
```

# Usage

#### ~/.vimrc
```.vimrc
source ~/dotfiles/.vimrc
```

#### ~/.gitconfig
```.gitconfig
[include]
  path = ~/dotfiles/.gitconfig
```

#### ~/.zshrc
- `alias` の三行は Optional

```.zshrc
source ~/dotfiles/.zshrc

alias vimvimrc='vim ~/dotfiles/.vimrc'
alias vimzshrc='vim ~/dotfiles/.zshrc'
alias vimgitconfig='vim ~/dotfiles/.gitconfig'
```

#### rbenv

```bash
$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

#### nodenv

```bash
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
```

#### pyenv

```bash
$ curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
$ git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
```

#### composer

```bash
$ curl -sS https://getcomposer.org/installer | php
$ sudo mv composer.phar /usr/local/bin/composer
$ sudo chmod +x /usr/local/bin/composer
```

##### If you use composer as user's global
- Required
    - set `COMPOSER_HOME=$HOME/.composer`
    - set `export PATH="$HOME/.composer/vendor/bin:$PATH"`
- How to install by composer
    - `$ composer global require phpunit/phpunit`
- check
    - `$ $HOME/.composer/vendor/bin/phpunit -v`
    - `$ composer config --global --list`
        - shown `[home] /home/your_account_name/.config/composer`

# Required

## Ubuntu

### Build Ruby (rbenv)

```bash
$ sudo apt-get install gcc build-essential libssl-dev libreadline-dev zlib1g-dev
```

### Build Python (pyenv)

```bash
$ sudo apt-get install libbz2-dev libreadline-dev libsqlite3-dev
```

# Reference (thanks!)
- [dotfilesを一元管理するときにちょっと苦が減る方法 \- Qiita](https://qiita.com/syguer/items/334716c8ee6e5ad93f56)

# LICENSE
- [MIT LICENSE](/LICENSE)
