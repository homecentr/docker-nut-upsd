FROM alpine:3.22

COPY ./entrypoint.sh /entrypoint.sh
COPY ./fs/ /

RUN apk add --no-cache nut && \
    chmod 0666 /etc/nut/* && \
    mkdir /var/run/nut && \
    chmod 0777 /var/run/nut && \
    chmod a+x /entrypoint.sh

USER nut

VOLUME [ "/config" ]

ENTRYPOINT [ "/entrypoint.sh" ]