source ~/dotfiles/.zshrc
source ~/dotfiles/.zshrc.docker.zshrc
source ~/dotfiles/.zshrc.wsl.zshrc

# --------------------------------------------------------------------------------
# 秘匿情報（ここはあとで home directory の .zshrc に移動する）
# --------------------------------------------------------------------------------
# 1Password CLI
# この URL のことを「秘密参照」と呼ぶ
export ONE_PASSWORD_MY_PASSWORD="<YOUR_1Password_URL>"

# OpenAI API
# 安直に全体に設定すると破産の恐れがあるが、とりえあず設定する
export OPENAI_API_KEY="<YOUR_OPENAI_API_KEY>"

# Gemini CLI (API)
export GEMINI_API_KEY="<YOUR_GEMINI_API_KEY>"

# DeepL API
export DEEPL_TOKEN="<YOUR_DEEPL_TOKEN>"

# Podman
# cf. $ man podman-compose
# export PODMAN_COMPOSE_PROVIDER="/opt/homebrew/bin/podman-compose"
# export PODMAN_COMPOSE_WARNING_LOGS="false"

# --------------------------------------------------------------------------------
# PATH の設定（全ての設定の上書き）
# --------------------------------------------------------------------------------

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash zsh)"

# --------------------------------------------------------------------------------
# PATH を重複のない状態にする
# --------------------------------------------------------------------------------

typeset -U path
path=($path)

# --------------------------------------------------------------------------------
# 以下、自動生成の追記のみとし、手動では書き込まない
# 二重で読み込んでいるものは適宜削除する
# --------------------------------------------------------------------------------
