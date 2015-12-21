FROM node

RUN npm install babel webpack webpack-dev-server -g
RUN npm install babel-core babel-loader babel-preset-es2015 babel-preset-react

RUN mkdir /app
WORKDIR /app

COPY package.json .
RUN npm install

COPY webpack.config.js .

RUN mkdir /app/src
# COPY src /app/src

RUN mkdir /app/public
COPY public /app/public

CMD npm start
EXPOSE 3333
