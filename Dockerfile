FROM node:alpine
WORKDIR /react-docker-tutorial/
COPY package.json .
RUN npm install
COPY . . 
EXPOSE 3000
CMD ["npm", "start"]