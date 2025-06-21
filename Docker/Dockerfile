FROM ruby:3.1

ENV RAILS_ENV=development
WORKDIR /app

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential libpq-dev nodejs yarn

# Install bundler
RUN gem install bundler

# Copy Gemfiles and install dependencies
COPY rails-app/Gemfile rails-app/Gemfile.lock ./
RUN bundle install

# Copy the rest of the app
COPY rails-app .

# Install JS dependencies
RUN yarn install

# Run Rails setup on container start
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails db:prepare && rails s -b 0.0.0.0"]
