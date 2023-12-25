FROM node:alpine as base

LABEL MAINTAINER="gvatsal60"
LABEL DESCRIPTION="Devel Env"

WORKDIR /app

COPY package.json .
COPY vite.config.js .

RUN npm install

EXPOSE 5173

CMD [ "npm", "run", "dev" ]