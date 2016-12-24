FROM ruby:2.3

MAINTAINER Mani Soundararajan <mani.sound@gmail.com>

RUN gem install --no-document github-pages -v 112

VOLUME ['/usr/app/src']
WORKDIR /usr/app/src

EXPOSE 4000
CMD [ "jekyll", "serve", "--watch", "--drafts", "--host", "0.0.0.0", "--port", "4000" ]
