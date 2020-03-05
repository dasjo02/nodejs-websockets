#Based off nodejs 10
FROM node:10
#Listen port for WS
EXPOSE 1337
EXPOSE 8080
#Install the websocket package
RUN npm install websocket && mkdir websocket
COPY chat-server.js /websocket
WORKDIR /websocket
CMD ["node","chat-server.js"]