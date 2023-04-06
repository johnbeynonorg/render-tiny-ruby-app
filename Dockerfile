# syntax = docker/dockerfile:1.2
ARG RUBY_VERSION=3.1.2-alpine
FROM ruby:${RUBY_VERSION} 

ARG BUNDLER_VERSION=2.3.9

ARG RAILS_ENV=production
ENV RAILS_ENV=${RAILS_ENV}

ARG THIS_IS_AN_ENV_VAR

ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

ARG BUNDLE_WITHOUT=development:test
ARG BUNDLE_PATH=vendor/bundle
ENV BUNDLE_PATH ${BUNDLE_PATH}
ENV BUNDLE_WITHOUT ${BUNDLE_WITHOUT}

RUN mkdir /app
WORKDIR /app

RUN apk add --update --no-cache build-base && rm -vrf /var/cache/apk/*

COPY Gemfile Gemfile.lock ./
RUN bundle install 

COPY . ./

ENV PORT 8080

# Let's try secrets
RUN --mount=type=secret,id=_env,dst=/app/.env

RUN chmod +x render-start.sh
CMD ["./render-start.sh"]
