#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Start command executing"
bundle exec ruby app.rb
