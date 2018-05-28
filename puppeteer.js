const puppeteer = require('puppeteer');

console.logCopy = console.log.bind(console);

console.log = function(data) {
    let currentDate = '[' + new Date().toLocaleString() + '] ';
    this.logCopy(currentDate, data);
};

async function run() {
    console.log('Creating browser');
    const browser = await puppeteer.launch({
        headless: true,
        args: ['--no-sandbox', '--disable-setuid-sandbox'],
    });

    const page = await browser.newPage();
    page.setViewport({width: 1920, height: 1080});

    console.log('Loading google home page');
    await page.goto('https://www.google.com/');
    await page.screenshot({path: 'google-screenshot.png'});
    console.log('snapshot created completed');

    process.exit(1);//exit and stop the whole docker
}


run();

