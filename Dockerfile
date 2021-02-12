FROM node:14

RUN mkdir -p /proxy

WORKDIR /proxy

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3004

CMD ["node", "server"]

# docker run -p 3004:3004 jdiv/proxy:latest