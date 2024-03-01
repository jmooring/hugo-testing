FROM ruby:2.6-alpine

RUN \
    echo 'gem: --no-document' >> /etc/gemrc && \
    apk add --no-cache libcurl xz-libs && \
    apk add --no-cache --virtual build-dependencies build-base libxml2-dev libxslt-dev && \
    gem install html-proofer && \
    apk del build-dependencies

ENTRYPOINT ["htmlproofer"]
CMD ["--help"]
