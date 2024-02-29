FROM node:20.11.1

WORKDIR /bot

COPY package*.json ./

RUN npm install

RUN npm install --dev

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
