FROM node:latest

RUN mkdir /bot && cd /bot
ADD . /bot

EXPOSE 8190

WORKDIR /bot

CMD ["bin/hubot", "--adapter", "chatwork"]
