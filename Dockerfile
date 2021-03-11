FROM node:14.15.0-alpine

WORKDIR /usr/src/app

COPY . .
RUN yarn install

EXPOSE 2368
CMD ["yarn", "run", "dev"]