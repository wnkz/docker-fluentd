FROM ruby:2.1
MAINTAINER Grégoire `wnkz` Morpain

ENV DEBIAN_FRONTEND noninteractive

RUN gem install fluentd --no-ri --no-rdoc
RUN fluentd --setup
RUN gem install fluent-plugin-loggly

CMD ["fluentd -v"]
