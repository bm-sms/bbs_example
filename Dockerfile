FROM ruby
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
ADD . /myapp
WORKDIR /myapp
RUN gem install bundler
RUN gem install rubygems-bundler
RUN bundle config git.allow_insecure true
RUN bundle install --path vendor/bundle
