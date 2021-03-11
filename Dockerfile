FROM node:14.15.0-alpine

RUN apk add --no-cache sqlite sqlite-dev
WORKDIR /usr/src/app

COPY . .
RUN yarn install

EXPOSE 2368
ENTRYPOINT ["/bin/sh"]
CMD ["run.sh"]
