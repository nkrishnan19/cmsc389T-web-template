 FROM node:10-alpine
WORKDIR /app
RUN chown node:node /app
COPY package*.json ./
USER node
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "app.js"]