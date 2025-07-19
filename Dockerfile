FROM node:24.1-slim
 
WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
 
CMD [ "npm", "start" ]

EXPOSE 8001

ENV PORT=8001
ENV MESH_CONTROLLER="http://cloud.radiusdesk.com"
ENV MQTT_BROKER="127.0.0.1"
ENV MQTT_PORT=1883
ENV MQTT_USER=openwrt	
ENV MQTT_PASS=openwrt
