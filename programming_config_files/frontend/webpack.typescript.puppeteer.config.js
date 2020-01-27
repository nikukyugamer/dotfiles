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
