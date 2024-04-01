FROM node:20-alpine

ARG NPM_TOKEN

ENV NODE_AUTH_TOKEN=$NPM_TOKEN

WORKDIR /app

COPY . /app

RUN echo "@deuspaul:registry=https://npm.pkg.github.com" > .npmrc

RUN echo "npm.pkg.github.com/:_authToken=\"${NODE_AUTH_TOKEN}\"" >> .npmrc

RUN npm i --yes

EXPOSE 3000

CMD ["npm", "start"]
