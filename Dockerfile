FROM ultimaphoenix/puppeteer

LABEL name="puppetter example"
LABEL maintainer="UltimaPhoenix"
LABEL version="1.0.0"
LABEL description="Puppeteer example docker image"


RUN groupadd -r puppeteer && \
    useradd --create-home --no-log-init -r -g puppeteer puppeteer

USER puppeteer
WORKDIR /home/puppeteer
COPY package.json /home/puppeteer
RUN npm install

COPY puppeteer.js /home/puppeteer
CMD ["node", "puppeteer.js"]


