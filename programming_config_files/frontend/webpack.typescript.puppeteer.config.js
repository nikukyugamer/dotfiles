const path = require('path');
// const nodeExternals = require('webpack-node-externals');

module.exports = {
  target: 'node',
  mode: 'development',
  entry: './src/entry.ts',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
    publicPath: '/dist/',
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env']
          }
        }
      },
      {
        test: /\.ts$/,
        use: 'ts-loader',
      },
      {
        test: /\.(css|scss)$/,
        include: path.resolve(__dirname, 'src'),
        use: ['style-loader', 'css-loader', 'sass-loader'],
      },
    ],
  },
  devServer: {
    contentBase: './',
  },
  resolve: {
    extensions: ['.ts', '.js'],
  },
  node: {
    fs: 'empty',
  },
  externals: {
    // [nodeExternals()],
    puppeteer: 'require("puppeteer")',
  },
};
use: {
  loader: 'babel-loader',   //loader名
  options: {                //Babelの設定
    presets: ['@babel/preset-env']
  }
}
