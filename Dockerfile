FROM ubuntu:jammy

RUN apt-get update
RUN apt-get install -y nodejs npm zip
RUN npm install -g markdown-styles

WORKDIR /app
