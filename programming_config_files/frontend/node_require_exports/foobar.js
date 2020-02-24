module.exports = class Foobar {
  constructor() {}

  execute(foo) {
    const myValue = foo;
    console.log(myValue);
  }
};
// const path = require('path');
// const filePath =
//   'file://' +
//   path.resolve(
//     __dirname,
//     '../__tests__/dmm_mobile_data_traffic_info_sample.html'
//   );
// const puppeteer = require('puppeteer');

// // module.exports = function tomoyoChan(kawaii) {
// //   const miryoku = kawaii;
// //   console.log(miryoku);
// // };

// module.exports = async () => {
//   const browser = await puppeteer.launch();
//   const page = await browser.newPage();
//   await page.goto(filePath);

//   const targetOptions = await page.$$('#fn-number > option');
//   const targetValue = await (
//     await targetOptions[0].getProperty('value')
//   ).jsonValue();

//   let errorObject;
//   try {
//     const result = await page.select('#fn-numbear', targetValue.trim());
//   } catch (error) {
//     errorObject = error;
//   }
//   console.log(typeof errorObject); // object
//   console.log(JSON.stringify(errorObject));

//   const myObject = {
//     tomoyo: 'takaoka',
//     ayaka: 'erissa'
//   };
//   console.log(JSON.stringify(myObject));

//   // console.log(typeof targetValue);
//   // console.log(targetValue.trim());

//   // const fooBar = await page.$$(targetOptions[0]);
//   // console.log(typeof result);
//   // console.log(result);

//   // const fuga = await (await hoge[0].getProperty('textContent')).jsonValue();
//   // console.log(await hoge[0].getProperty('textContent'));
//   // console.log(fuga.trim());
//   // console.log(
//   //   await (await hoge[0].getProperty('textContent')).jsonValue().trim()
//   // );

//   // スクリーンショットによるデバッグ
//   // await page.screenshot({
//   //   path: path.resolve(
//   //     __dirname,
//   //     '../logs/dmm_mobile_data_traffic_info_debug.png'
//   //   ),
//   //   fullPage: true
//   // });

//   // const eachDayRowSelector =
//   //   'body > section > div > section.area-right > section.box-recentCharge > div > table > tbody > tr';
//   // const targetTrElements = await page.$$(eachDayRowSelector);

//   // // Promise で forEach は使えない
//   // const resultDataArray = [];
//   // for (let i = 0; i < targetTrElements.length; i++) {
//   //   const targetTdElements = await targetTrElements[i].$$('td');
//   //   const eachRowDataArray = [];

//   //   for (let j = 0; j < targetTdElements.length; j++) {
//   //     const cellData = await (
//   //       await targetTdElements[j].getProperty('textContent')
//   //     ).jsonValue();

//   //     eachRowDataArray.push(cellData.trim());
//   //   }

//   //   resultDataArray.push(eachRowDataArray);
//   // }

//   // // Printデバッグ
//   // // console.log(resultDataArray.length);

//   // // TODO: CSV出力

//   await browser.close();

//   // const createCsvWriter = require('csv-writer').createObjectCsvWriter;
//   // const csvOutputPath = path.resolve(__dirname, './dmm_amount.csv');
//   // const csvWriter = createCsvWriter({
//   //   path: csvOutputPath,
//   //   header: [
//   //     { id: 'date', title: '日付' },
//   //     { id: 'amountOfFastDataTraffic', title: '高速データ通信量' },
//   //     { id: 'amountOfSlowDataTraffic', title: '低速データ通信量' },
//   //     { id: 'amountOfSNSFreeTraffic', title: 'SNSフリー通信量' }
//   //   ]
//   // });

//   // const targetRecords = [];
//   // let eachRecordObject = {};
//   // for (let m = 0; m < resultDataArray.length; m++) {
//   //   eachRecordObject = {
//   //     date: resultDataArray[m][0],
//   //     amountOfFastDataTraffic: resultDataArray[m][1],
//   //     amountOfSlowDataTraffic: resultDataArray[m][2],
//   //     amountOfSNSFreeTraffic: resultDataArray[m][3]
//   //   };

//   //   targetRecords.push(eachRecordObject);
//   // }

//   // // const records = resultDataArray;
//   // // [
//   // //   {
//   // //     date: 'Bob',
//   // //     amount_a: 'French, English',
//   // //     amount_b: 'foo',
//   // //     amount_c: 'bar'
//   // //   },
//   // //   { date: 'Mary', amount_a: 'English', amount_b: 'hoge', amount_c: 'fuga' }
//   // // ];

//   // csvWriter
//   //   .writeRecords(targetRecords) // returns a promise
//   //   .then(() => {
//   //     console.log('...Done');
//   //   });
// };
