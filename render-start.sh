#!/usr/bin/env bash
# exit on error
set -o errexit

bundle exec ruby app.rb -o 0.0.0.0
