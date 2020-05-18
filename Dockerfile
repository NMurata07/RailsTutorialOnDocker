FROM ruby:2.6.4

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && rm -rf /var/lib/apt/lists/*

RUN mkdir /app_rails_tutorial
ENV APP_ROOT /app_rails_tutorial
WORKDIR ${APP_ROOT}

ADD ./src/Gemfile $APP_ROOT/Gemfile
ADD ./src/Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
ADD ./src/ $APP＿ROOT


