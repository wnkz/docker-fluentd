FROM ruby:2.1
MAINTAINER Grégoire `wnkz` Morpain

ENV DEBIAN_FRONTEND noninteractive

RUN gem install fluentd --no-ri --no-rdoc
RUN fluentd --setup
RUN fluent-gem install fluent-plugin-elasticsearch
RUN fluent-gem install fluent-plugin-rewrite-tag-filter
RUN fluent-gem install fluent-plugin-parser

CMD ["fluentd", "-v"]
