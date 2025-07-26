FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS clust32.612kh6mx.mongodb.net
ENV MONGODB_USERNAME abc
ENV MONGODB_PASSWORD xyz

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]