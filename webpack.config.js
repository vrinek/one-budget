module.exports = {
  entry: './main.js',
  output: {
    path: './',
    filename: 'index.js'
  },
  devServer: {
    host: '0.0.0.0',
    inline: true,
    port: 3333
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
