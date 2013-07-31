#!/bin/bash
bait_dir=$(dirname $0)
project_dir="$bait_dir/.."
cd $project_dir

if [[ -f ./Gemfile ]]; then
  echo "Gemfile exists -- bundling"
  bundle
fi

rake spec
