FROM node:14.15.0-alpine

WORKDIR /usr/src/app

COPY . .
RUN yarn install

# Only for testing
RUN mkdir dev_data && sqlite3 dev_data/database.db "create table aTable(field1 int); drop table aTable;" > /dev/null

EXPOSE 2368
CMD ["yarn", "run", "dev"]
