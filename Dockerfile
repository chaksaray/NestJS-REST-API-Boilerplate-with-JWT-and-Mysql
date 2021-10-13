FROM node:latest

RUN mkdir -p usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

COPY yarn.lock /usr/src/app

RUN rm -rf node_modules

RUN yarn install

COPY . /usr/src/app

RUN yarn global add nodemon

RUN yarn global add typescript

EXPOSE 3000

CMD ["yarn", "start:dev"]