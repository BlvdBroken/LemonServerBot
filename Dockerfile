FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN apt-get install ffmpeg -y

RUN npm install
RUN npm audit fix

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
