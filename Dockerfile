FROM ruby

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . .

RUN bundle install

CMD bundle exec rails server
