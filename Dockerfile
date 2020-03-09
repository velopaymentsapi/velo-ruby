FROM ruby:2.7.0-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs curl
RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
RUN bundle config set path 'vendor/bundle'
RUN bundle install