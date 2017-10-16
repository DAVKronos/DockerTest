FROM ruby

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . .

VOLUME /opt/app

CMD bundle exec rails server
