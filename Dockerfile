FROM node:7.5.0-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm install && npm cache clean
ENV NODE_ENV production
EXPOSE 5000
CMD ["node", "index.js"]
