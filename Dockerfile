FROM node:20-alpine

ARG NPM_TOKEN

ENV NODE_AUTH_TOKEN {$NPM_TOKEN}

WORKDIR /app

COPY . /app

RUN echo "npm.pkg.github.com/:_authToken="'"'${NPM_TOKEN}'"' > /app/.npmrc

RUN npm i --yes

EXPOSE 3000

CMD ["npm", "start"]
