#/usr/bin/env bash
set -euxo pipefail

# TypeScript
yarn add --dev typescript @types/node

# Sass
yarn add --dev sass

# Prettier
yarn add --dev prettier

# Stylelint (Sass)
# https://stylelint.io/
# PostCSS は v8 以上なので postcss@8 と明示することも必要
# https://github.com/stylelint-scss/stylelint-config-standard-scss/issues/5
yarn add -dev stylelint stylelint-config-standard-scss postcss stylelint-config-recess-order

# ESLint
yarn add --dev eslint eslint-config-prettier eslint-config-standard @typescript-eslint/parser @typescript-eslint/eslint-plugin

# ESLint Plug-In
# yarn add --dev eslint-plugin-jest
# yarn add --dev eslint-plugin-cypress

# Jest
yarn add --dev jest ts-jest

exit 0
