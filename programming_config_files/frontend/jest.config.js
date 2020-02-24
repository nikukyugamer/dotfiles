// $ yarn add --dev babel-jest も必要に応じて行う
module.exports = {
  verbose: true,
  testPathIgnorePatterns: ['/node_modules/', '/.history/'],
  testTimeout: 30000,
  preset: 'jest-puppeteer',
};
