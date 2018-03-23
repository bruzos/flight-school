#!/bin/bash

set -e -x

pushd code-microserviceA
  bundle install
  bundle exec rspec
popd
