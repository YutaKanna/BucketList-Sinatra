FROM ruby:2.5.1-alpine3.7

WORKDIR /app

RUN gem install bundler

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install
COPY . /app
EXPOSE 80
CMD ["ruby", "myapp.rb"]