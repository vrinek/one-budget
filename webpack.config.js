module.exports = {
  entry: './src/main.js',
  output: {
    path: './public/',
    filename: 'index.js'
  },
  devServer: {
    contentBase: './public/',
    host: '0.0.0.0',
    port: 3333,
    watchOptions: {
      poll: true
    }
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel',
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  }
}
