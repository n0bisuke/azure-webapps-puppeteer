const puppeteer = require('puppeteer');

const main = async () => {
    console.log(`--start--`)
  const browser = await puppeteer.launch({args: ['--no-sandbox', '--disable-setuid-sandbox']});
  const page = await browser.newPage();
  await page.goto('https://protoout.studio/');
  await page.waitForTimeout(10000);
  await page.screenshot({path: 'example.png'});
  await browser.close();
  console.log(`--done--`)
};

module.exports = main;