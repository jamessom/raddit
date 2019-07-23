FROM ruby:2.5-alpine

RUN apk update && apk upgrade &&\
  apk --no-cache add build-base tzdata nodejs ca-certificates yarn git python mysql-dev &&\ 
  rm -rf /var/cache/apk/*

ENV INSTALL_PATH ./raddit
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile ./
ENV BUNDLE_PATH ./gems

COPY . .