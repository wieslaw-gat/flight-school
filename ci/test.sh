#!/bin/bash

set -e -x

apt-get update
apt-get install ruby ruby-bundler -y
pushd flight-school
  bundle install
  bundle exec rspec
popd
