FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache python3 make g++

RUN npm install -g npm@latest

COPY package*.json ./

RUN npm install

RUN npm install --save-dev eslint eslint-config-next @typescript-eslint/eslint-plugin @typescript-eslint/parser

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev", "--", "--hostname", "0.0.0.0"]
