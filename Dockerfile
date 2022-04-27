FROM php:8.1-alpine

MAINTAINER Aleksey Bashkatov <as@bashkatov.pro>

ENV DEPLOYER_VERSION=v7.0.0-rc.4

RUN apk update --no-cache \
    && apk add --no-cache \
        openssh-client

RUN curl -L https://deployer.org/releases/$DEPLOYER_VERSION/deployer.phar > /usr/local/bin/dep \
    && chmod +x /usr/local/bin/dep

ENTRYPOINT ["dep"]
CMD ["deploy"]
