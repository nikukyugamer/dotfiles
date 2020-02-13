module.exports = {
  launch: {
    dumpio: true,
    // headless: process.env.HEADLESS !== 'false'
    headless: false
  },
  browser: 'chromium',
  browserContext: 'default',
  server: {
    command: 'node server.js',
    port: 4444,
  },
};
