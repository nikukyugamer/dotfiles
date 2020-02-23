const puppeteer = require('puppeteer');

const yahooDePuppeteer = async () => {
  const browser = await puppeteer.launch({
    headless: true,
    // args: [
    //   `--disable-extensions-except=${path.resolve(
    //     __dirname,
    //     '../lib/chrome_extensions/vuejs_devtools'
    //   )}`,
    // ],
  });
  const page = await browser.newPage();
  await page.setViewport({ width: 1200, height: 800 });
  await page.goto('https://www.yahoo.co.jp/');

  const targetSelector = '#ToolList > ul > li';
  const targetLiElements = await page.$$(targetSelector);
  const resultValues = [];

  // Promise で forEach は使えない
  for (let i = 0; i < targetLiElements.length; i++) {
    resultValues.push(
      await (await targetLiElements[i].getProperty('textContent')).jsonValue()
    );
  }

  // resultValues: ['ショッピング', 'PayPayモール', 'ヤフオク!', 'PayPayフリマ', 'ZOZOTOWN'...]
  resultValues.forEach((resultValue, _) => {
    console.log(resultValue);
  });

  const searchBoxSelector = 'input[type="search"]';
  await page.waitForSelector(searchBoxSelector);
  // await page.$eval(searchBoxSelector, el => el.scrollIntoView());
  await page.type(searchBoxSelector, '任天堂');

  const searchButtonSelector = 'button[class*="rapid-noclick-resp"]';
  await page.waitForSelector(searchButtonSelector);
  // await page.$eval(searchButtonSelector, el => el.scrollIntoView());
  await page.click(searchButtonSelector);

  await page.waitFor(5000);
  await page.screenshot({ path: 'yahoo_de_puppeteer_screenshot.png' });

  await browser.close();
};

const netflixDePuppeteer = async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://www.netflix.com/jp/');

  const languagePickerSelector = '#undefined-select';
  await page.waitForSelector(languagePickerSelector);
  await page.select(languagePickerSelector, '/jp-en/');

  // waitFor で待たないとだめだった
  // NG: await page.waitForNavigation();
  // NG: await page.waitForSelector(languagePickerSelector);
  await page.waitFor(5000);

  await page.screenshot({ path: 'netflix_de_puppeteer_screenshot.png' });

  await browser.close();
};

yahooDePuppeteer();
netflixDePuppeteer();
