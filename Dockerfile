FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN mkdir /lens_server

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /lens_server
WORKDIR /lens_server
