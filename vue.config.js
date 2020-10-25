module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
    ? '/dice/'
    : '/',
  chainWebpack: config => {
    config
      .plugin('html')
      .tap(args => {
        args[0].title = 'Dice Game'
        return args
      })
  }
}
