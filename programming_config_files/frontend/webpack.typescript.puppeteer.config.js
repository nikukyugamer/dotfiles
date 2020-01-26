const path = require('path');
const nodeExternals = require('webpack-node-externals');

module.exports = {
  externals: [nodeExternals()],
  target: 'node',
  mode: 'development',
  entry: './app.ts',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'dist'),
    publicPath: '/dist/'
  },
  module: {
    rules: [
    {
      test: /\.ts$/,
      use: 'ts-loader'
    }
    ]
  },
  devServer: {
    contentBase: './'
  },
  resolve: {
    extensions: ['.ts', '.js']
  }
};
