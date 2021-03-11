FROM node:14.15.0-alpine

WORKDIR /usr/src/app

COPY . .
RUN yarn install --production --ignore-optional

EXPOSE 2368
ENTRYPOINT ["/bin/sh"]
CMD ["run.sh"]
