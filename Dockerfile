FROM node

RUN mkdir /app
WORKDIR /app

COPY package.json .
RUN npm install

RUN npm install babel-core babel-loader babel-preset-es2015 babel-preset-react
RUN npm install babel webpack webpack-dev-server -g

COPY webpack.config.js .

RUN mkdir /app/src
COPY src /app/src

RUN mkdir /app/public
COPY public /app/public

CMD npm start
EXPOSE 3333
