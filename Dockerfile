FROM node:16 AS build
WORKDIR /app
COPY package.* /app
RUN rm -rf node_modules
RUN npm install
RUN npm install appdynamics
COPY ./ /app
RUN npm run start
EXPOSE 5000
CMD ["npm","run","start"]


