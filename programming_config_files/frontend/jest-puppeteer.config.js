module.exports = {
  launch: {
    dumpio: true,
    // headless: process.env.HEADLESS !== 'false'
    headless: false,
  },
  browser: 'chromium',
  browserContext: 'default',
  // サーバを起動する必要のないテストではコメントアウトしないとエラーになる
  // server: {
  //   command: 'node server.js',
  //   port: 4444,
  // },
};
