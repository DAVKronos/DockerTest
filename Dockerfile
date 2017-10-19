FROM ruby

# Install gems
WORKDIR /opt/app
COPY Gemfile* .
RUN ["bundle", "install"]

# Setup environment
ENV RAILS_ENV "development"

# Create directory
#RUN ["mkdir", "-p", "/opt/app"]

# Copy files
COPY . .

# Setup user permissions
RUN ["useradd", "-o", "-u", "2000", "kronos"]
RUN ["chown", "-R", "kronos", "/opt/app"]

# Start puma rails server
CMD ["bundle", "exec", "rails", "server"]
