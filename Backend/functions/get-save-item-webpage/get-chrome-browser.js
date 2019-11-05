const puppeteer = require("puppeteer-core");

const getChromeBrowser = async () => {
  var browser = await puppeteer.connect({
    browserWSEndpoint:
      "wss://chrome.browserless.io?token=fb1b411b-7392-425f-895e-f58ca3fce134&blockAds"
  });
  return browser;
};

module.exports = getChromeBrowser;
