FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.6ukh6mx.mongodb.net
ENV MONGODB_USERNAME ${{ secrets.MONGODB_USERNAME }}
ENV MONGODB_PASSWORD ${{ secrets.MONGODB_PASSWORD }}

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]