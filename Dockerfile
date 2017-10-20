FROM ruby

# Install gems
RUN ["mkdir", "-p", "/opt/app"]
WORKDIR /opt/app
COPY Gemfile* ./
RUN ["bundle", "install"]

# Setup environment
ENV RAILS_ENV "development"

# Copy files
COPY . .

RUN ["git", "checkout", "--", "."]

# Setup user permissions
RUN ["useradd", "-o", "-u", "2000", "kronos"]
RUN ["chown", "-R", "kronos", "/opt/app"]

# Start puma rails server
CMD ["bundle", "exec", "rails", "server"]
