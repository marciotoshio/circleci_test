FROM ruby:3.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
WORKDIR /app
RUN npm install yarn --global
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler
RUN bundle install

