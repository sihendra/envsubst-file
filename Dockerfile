FROM alpine:3.6
MAINTAINER Nick Richardson <nick.richardson@mediapixeldesign.com>
RUN apk --update add gettext-dev

ADD envsubst-file.sh /
RUN chmod +x /envsubst-file.sh

ENTRYPOINT ["/envsubst-file.sh"]
