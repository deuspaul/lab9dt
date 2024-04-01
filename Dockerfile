FROM node:20-alpine

ARG NPM_TOKEN

ENV NODE_AUTH_TOKEN=$NPM_TOKEN

WORKDIR /app

COPY . /app

RUN echo "registry=https://npm.pkg.github.com/deuspaul" > /app/.npmrc

RUN echo "@deuspaul:registry=https://npm.pkg.github.com" >> /app/.npmrc

RUN echo "//npm.pkg.github.com/:_authToken=${NODE_AUTH_TOKEN}" >> /app/.npmrc

RUN ls -alh

RUN npm whoami

RUN cat .npmrc

RUN npm i --yes

EXPOSE 3000

CMD ["npm", "start"]
