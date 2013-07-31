#!/bin/bash
bait_dir=$(dirname $0)
project_dir="$bait_dir/.."
cd $project_dir

if [[ -d ./Gemfile ]]; then
  bundle
fi

rake spec
