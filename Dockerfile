FROM ruby:latest

LABEL maintainer="Kazuto Hirao <kazuto.hirao.1073@gmail.com>"

WORKDIR /etc/ruby_practice

RUN echo "gem: --no-document" >> ~/.gemrc

RUN gem install rails -v 6.0.3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update  && apt-get install -y \
    git \
    nodejs \
    yarn

RUN git init

CMD /bin/bash
