FROM ruby:2.1
MAINTAINER Protranet <ihsan.mohammad@protranet.de>

COPY . /src
WORKDIR /src
RUN bundler install

CMD ["rackup", "--host", "0.0.0.0"]
EXPOSE 9292
