#!/usr/bin/env bash

function npm_install_g() {
  echo '======================================================='
  echo "[LOG] START: $ npm install -g $1"
  echo '======================================================='

  npm install -g "$1"

  echo '======================================================='
  echo "[LOG] END: $ npm install -g $1"
  echo '======================================================='

  echo '**********************************************************************'
}

npm_install_g npm

npm_install_g @amanoese/muscular
npm_install_g @anthropic-ai/claude-code # https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview
npm_install_g @biomejs/biome
npm_install_g @devcontainers/cli
npm_install_g @fand/kao
npm_install_g @google/clasp
npm_install_g @google/gemini-cli
npm_install_g @openai/codex # https://github.com/openai/codex
npm_install_g @prantlf/jsonlint # https://github.com/prantlf/jsonlint
npm_install_g aicommits
npm_install_g crontab-ui
npm_install_g daff # daff: data diff (https://github.com/paulfitz/daff)
npm_install_g diff-so-fancy
npm_install_g dsstore-cli
npm_install_g firebase-tools # Firebase CLI (https://github.com/firebase/firebase-tools)
npm_install_g fx
npm_install_g http-server
npm_install_g js-beautify
npm_install_g kmdr
npm_install_g @mermaid-js/mermaid-cli # https://github.com/mermaid-js/mermaid-cli
npm_install_g npm-check-updates
npm_install_g pm2
npm_install_g prettier # グローバルに入れておいたほうが VS Code で有用（問題があるようなら外す）
npm_install_g textlint
npm_install_g ts-node
npm_install_g tsx # https://github.com/privatenumber/tsx
npm_install_g typescript
npm_install_g vercel
npm_install_g wrangler
npm_install_g yarn
npm_install_g yarn-outdated-formatter # https://github.com/masawada/yarn-outdated-formatter
npm_install_g yukichant
npm_install_g zx

# git-cz
npm_install_g commitizen
npm_install_g git-cz

exit 0
