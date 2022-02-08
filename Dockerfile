FROM node:16 as builder

COPY . /app
WORKDIR /app

RUN yarn install
RUN yarn build 

# Dev
EXPOSE 3000
CMD [ "yarn", "start" ]