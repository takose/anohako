FROM ruby:2.4.1-alpine


#  Ruby
#-----------------------------------------------
ENV BUNDLER_VERSION 1.14.6

RUN gem install bundler --version "$BUNDLER_VERSION" \
# Ignore warning: "Don't run Bundler as root."
# @see https://github.com/docker-library/rails/issues/10
  && bundle config --global silence_root_warning 1 \
# Ignore insecure `git` protocol for gem
  && bundle config --global git.allow_insecure true \
# Fix nokogiri build
  && bundle config --global build.nokogiri \
    --use-system-libraries \
    --with-xml2-config=/usr/bin/xml2-config \
    --with-xslt-config=/usr/bin/xslt-config


#  Timezone
#-----------------------------------------------
ENV TIMEZONE Asia/Tokyo

RUN apk add --no-cache -U tzdata \
  && ln -sf /usr/share/zoneinfo/$TIMEZONE /etc/localtime


#  Library
#-----------------------------------------------
RUN apk add --no-cache -U \
    bash \
    ca-certificates \
    cmake \
    coreutils \
    g++ \
    git \
    icu-dev \
    less \
    libc-dev \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    make \
    ncurses-dev \
    nodejs \
    openssh-client \
    openssl-dev \
    postgresql-dev \
    zlib-dev

#  App
#-----------------------------------------------
COPY . /app
WORKDIR /app

RUN mkdir -p \
  log \
  tmp/cache \
  tmp/pids \
  tmp/sockets

RUN bundle install \
    --path vendor/bundle \
    # --without test development \
    --jobs 8

# RUN RAILS_ENV=production bundle exec rails assets:precompile

EXPOSE 8000

CMD ["bundle", "exec", "rails", "s"]