FROM node:18-alpine

RUN npm -g i pnpm
WORKDIR /app
ENV TZ="Asia/Shanghai"

ADD package.json .npmrc pnpm-lock.yaml .types-syncrc.json /app/
ADD build/copyVant.ts /app/build/
RUN pnpm install

ADD . .