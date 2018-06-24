FROM ultimaphoenix/puppeteer:latest@sha256:deede1008d458f1142c345a7cb4ce3d59fbc94204e4044174f170b021449e7d5

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


