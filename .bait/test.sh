#!/bin/bash --login
bait_dir=$(dirname $0)
project_dir="$bait_dir/.."
cd $project_dir

rvm info

pwd

if [[ -f ./Gemfile ]]; then
  export BUNDLE_GEMFILE=$project_dir/Gemfile
  echo "Gemfile exists -- bundling"
  bundle install
  bundle exec rake spec
else
  rake spec
fi
