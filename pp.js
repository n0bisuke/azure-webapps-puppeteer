const puppeteer = require('puppeteer');

const main = async () => {
  const browser = await puppeteer.launch({args: ['--no-sandbox', '--disable-setuid-sandbox']});
  const page = await browser.newPage();
  await page.goto('https://protoout.studio/');
  await page.waitFor(10000);
  await page.screenshot({path: 'example.png'});
  await browser.close();
};

module.exports = main;