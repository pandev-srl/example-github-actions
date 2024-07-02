FROM node:20.15.0-alpine

RUN mkdir /app
WORKDIR /app

RUN npm i -g yarn

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

CMD [ "yarn", "start" ]