const path = require('path');
// const Dotenv = require('dotenv-webpack');

module.exports = {
  // target: 'node',
  mode: 'development',
  entry: path.resolve(__dirname, './src/js/entry.js'),
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'public/js'),
  },
  module: {
    rules: [
      {
        test: /\.scss$/,
        include: path.resolve(__dirname, 'src/scss'),
        // 下から順番に実行されることに注意する
        use: ['style-loader', 'css-loader', 'sass-loader'],
      },
    ],
  },
  // node: {
  //   fs: 'empty',
  //   __dirname: false
  // },
  // externals: {
  //   puppeteer: 'require("puppeteer")'
  // },
  // plugins: [new Dotenv()]
};
