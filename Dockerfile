FROM node:latest

ENV BOT_HOME /bot

RUN mkdir $BOT_HOME
WORKDIR $BOT_HOME

# hubot default port
EXPOSE 8080

ADD ./package.json $BOT_HOME/
RUN npm install

ADD . $BOT_HOME

CMD ["bin/hubot", "--adapter", "chatwork"]
