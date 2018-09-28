FROM node:8.9.0-alpine

RUN mkdir -p /app
RUN mkdir -p /app/dist
RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python
RUN npm install --quiet node-gyp -g 

WORKDIR /app

ADD package*.json /app/

RUN npm install

COPY . .

RUN npm run ng-translate
RUN npm run ng-tools
RUN npm run build-universal

CMD ls -l && npm run server

EXPOSE 4000

VOLUME [ "/app" ]