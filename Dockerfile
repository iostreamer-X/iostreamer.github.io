FROM ruby:2.7
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN gem install bundler
RUN bundle install