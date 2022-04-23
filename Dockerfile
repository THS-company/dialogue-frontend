FROM node:16.14.2-alpine3.14

WORKDIR /app/dialogue

RUN apk update && apk add --no-cache python3 make g++

COPY ./src/dialogue/package.json ./src/dialogue/yarn.lock ./
RUN yarn install

CMD yarn build