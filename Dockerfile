FROM node:5.5

MAINTAINER watawuwu

ENV TZ Asia/Tokyo

RUN npm install -g yo coffee-script \
  hubot \
  generator-hubot \
  underscore \
  xml2js \
  cron \
  emailjs \
  sugar \
  forever \
  redis

RUN useradd -m hubot -s /bin/bash

RUN  mkdir /opt/app && \
 chown hubot:hubot /opt/app

USER hubot
WORKDIR /opt/app

RUN yes | yo hubot --name="Hubot" --defaults

ENV PORT 9999
EXPOSE 9999

CMD bin/hubot
