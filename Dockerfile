FROM node

RUN mkdir /app
WORKDIR /app

COPY package.json .
RUN npm install

RUN npm install babel-core babel-loader babel-preset-es2015 babel-preset-react
RUN npm install babel webpack webpack-dev-server -g

COPY webpack.config.js .
COPY App.js .
COPY main.js .
COPY index.html .

CMD npm start
