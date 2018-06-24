FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sophistock
WORKDIR /sophistock
COPY Gemfile /sophistock/Gemfile
COPY Gemfile.lock /sophistock/Gemfile.lock
RUN bundle install
COPY . /sophistock