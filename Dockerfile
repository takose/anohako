FROM ruby:2.4.1-alpine3.6


#  Ruby
#-----------------------------------------------
ENV BUNDLER_VERSION 1.14.6

RUN gem install bundler --version "$BUNDLER_VERSION" \
  && bundle config --global silence_root_warning 1 \
  && bundle config --global git.allow_insecure true \
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
    postgresql-dev \
    zlib-dev \
    yarn
    # && curl -o- -L https://yarnpkg.com/install.sh | bash

#  App
#-----------------------------------------------
COPY . /app
WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app
RUN bundle install \
    --path vendor/bundle \
    --jobs 8

COPY package.json /app
COPY yarn.lock /app
RUN yarn

# RUN RAILS_ENV=production bundle exec rails assets:precompile

CMD ["./bin/rails", "s", "--binding=0.0.0.0"]
