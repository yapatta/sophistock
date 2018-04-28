FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /div_provisional
WORKDIR /div_provisional
COPY Gemfile /div_provisional/Gemfile
COPY Gemfile.lock /div_provisional/Gemfile.lock
RUN bundle install
COPY . /div_provisional