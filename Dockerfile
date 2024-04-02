FROM node:20-alpine

ARG NPM_TOKEN

RUN echo $NPM_TOKEN

ENV PAT3=$NPM_TOKEN

RUN echo $PAT3

WORKDIR /app

COPY . /app

RUN echo "registry=https://npm.pkg.github.com/deuspaul" > /app/.npmrc

RUN echo "@deuspaul:registry=https://npm.pkg.github.com" >> /app/.npmrc

RUN echo "//npm.pkg.github.com/:_authToken=${PAT3}" >> /app/.npmrc

RUN ls -alh

RUN cat .npmrc

RUN npm i --yes

EXPOSE 3000

CMD ["npm", "start"]
