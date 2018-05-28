FROM ultimaphoenix:puppeteer

LABEL name="puppetter example"
LABEL maintainer="UltimaPhoenix"
LABEL version="1.0.0"
LABEL description="Headless Chrome installed in a container for Puppeteer usage"


WORKDIR /puppeteer
COPY package.json /puppeteer


RUN npm install
COPY . /mogul

CMD node puppeteer.js


