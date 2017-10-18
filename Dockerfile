FROM ruby

# Setup environment
ENV RAILS_ENV "development"

# Create directory
RUN ["mkdir", "-p", "/opt/app"]
WORKDIR /opt/app

# Copy files
COPY . .

# Install files
RUN ["bundle", "install"]

# Setup user permissions
RUN ["useradd", "-o", "-u", "2000", "kronos"]
RUN ["chown", "-R", "kronos", "/opt/app"]

# Start puma rails server
CMD ["bundle", "exec", "rails", "server"]
