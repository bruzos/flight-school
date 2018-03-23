FROM ruby:latest
MAINTAINER Ricardo Bruzos, ricardo.bruzos.contractor@bbva.com

RUN apt-get update -qq && apt-get install -y build-essential

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

EXPOSE 9294

CMD ["bundle", "exec", "rackup", "config.ru", "-p", "9294", "-o", "0.0.0.0"]
