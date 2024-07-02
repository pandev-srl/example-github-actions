FROM node:20.15.0-alpine

ARG BUILD_VERSION
ENV BUILD_VERSION=$BUILD_VERSION

ARG BUILD_REF
ENV BUILD_REF=$BUILD_REF

RUN mkdir /app
WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

CMD [ "yarn", "start" ]