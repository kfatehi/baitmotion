#!/bin/bash --login
bait_dir=$(dirname $0)
project_dir="$bait_dir/.."
cd $project_dir

export BUNDLE_GEMFILE=$project_dir/Gemfile
echo "bundling"
bundle install > /dev/null 2>&1
motion-specwrap
