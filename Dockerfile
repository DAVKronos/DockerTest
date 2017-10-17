FROM ruby

RUN ["mkdir", "-p", "/opt/app"]
WORKDIR /opt/app

ENV RAILS_ENV "development"

COPY . .

RUN ["bundle", "install"]

CMD ["bundle", "exec", "rails", "server"]
