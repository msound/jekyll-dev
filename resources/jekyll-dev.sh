#!/bin/bash
case "$1" in
  new)
    bundle exec jekyll new /usr/app/src
    ;;
  forcenew)
    bundle exec jekyll new /usr/app/src --force
    ;;
  build)
    cd /usr/app/src
    jekyll build
    ;;
  sh)
    bash
    ;;
  serve|*)
    cd /usr/app/src
    jekyll serve --watch --drafts --host 0.0.0.0
esac
