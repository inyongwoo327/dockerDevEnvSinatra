FROM ruby:3.0.1-buster

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
