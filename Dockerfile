FROM ruby

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . .

RUN bundle install

ENTRYPOINT setup_container.sh

CMD bundle exec rails server
