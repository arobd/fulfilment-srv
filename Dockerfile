FROM node:lts-alpine3.10
EXPOSE 8282

#RUN apt-get -q update
#RUN apt-get -qy install netcat

ENV SERVICE_HOME /service
RUN mkdir -p $SERVICE_HOME

RUN echo 2021x1
RUN apk add --no-cache bash

WORKDIR $SERVICE_HOME
RUN echo 2021x200
COPY . .
RUN echo 2021x3
RUN npm ci --production
