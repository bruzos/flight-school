#!/bin/bash

set -e -x

pushd code-microserviceA
  gem install bundler
  bundle install
  bundle exec rspec
popd
