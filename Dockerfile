FROM node:lts-alpine3.9
EXPOSE 8282

ENV SERVICE_HOME /service
RUN mkdir -p $SERVICE_HOME

RUN echo 2021x1
RUN apk add --no-cache bash

WORKDIR $SERVICE_HOME
RUN echo 2021x2
COPY . .
RUN echo 2021x3
RUN npm ci --production
