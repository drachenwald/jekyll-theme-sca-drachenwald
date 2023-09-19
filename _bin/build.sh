#!/bin/bash
curl -o _data/remote/groups.json https://dis.drachenwald.sca.org/data/regnum-groups.json
bundle update --bundler
bundle install
bundle exec jekyll serve --livereload --watch --host 0.0.0.0
