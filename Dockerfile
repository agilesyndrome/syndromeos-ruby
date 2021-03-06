FROM docker.pkg.github.com/agilesyndrome/syndromeos-base/syndromeos:latest

ARG rubyMajor=2
ARG rubyMinor=7
ARG rubyPatch=0

ENV RUBY_VER ${rubyMajor}.${rubyMinor}
ENV RUBY_VERSION ${rubyMajor}.${rubyMinor}.${rubyPatch}

RUN apt-get update \
 && apt-get install -y \
   xz-utils

WORKDIR /ruby


RUN curl -LO https://cache.ruby-lang.org/pub/ruby/${RUBY_VER}/ruby-${RUBY_VERSION}.tar.gz \
 && ls -l \
 && tar -xzvf ruby-${RUBY_VERSION}.tar.gz \
 && cd ruby-${RUBY_VERSION} \
 && ./configure --prefix=/ruby --with-openssl-dir=${OPENSSL_PATH} \
 && make \
 && make install \
 && ls -l /ruby


ENV PATH ${PATH}:/ruby/bin

WORKDIR /app

