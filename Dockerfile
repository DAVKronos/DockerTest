FROM ruby

RUN ["mkdir", "-p", "/opt/app"]
WORKDIR /opt/app

ENV RAILS_ENV "development"

COPY . .

RUN ["bundle", "install"]

RUN ["useradd", "kronos"]
RUN chown -R kronos /opt/app
USER kronos

CMD ["bundle", "exec", "rails", "server"]
