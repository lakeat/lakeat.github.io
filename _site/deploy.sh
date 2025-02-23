#!/bin/zsh

# Default commit message to timestamp if no argument is passed
COMMIT_MESSAGE="${1:-$(date '+%Y-%m-%d %H:%M:%S')}"

# Run the Jekyll build and serve commands
# bundle install && bundle exec jekyll build && bundle exec jekyll serve
bundle install && bundle exec jekyll build

# Git commit and push
git add . && git commit -m "$COMMIT_MESSAGE" && git push -u origin main
