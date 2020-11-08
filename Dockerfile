ARG ALPINE_VERSION=3.12

FROM alpine:${ALPINE_VERSION}

LABEL maintainer="Sascha Holtbrügge <sash@sash.one>"
ARG OPENVPN_VERSION=2.4.9-r0

EXPOSE 443/tcp
EXPOSE 1194/udp
EXPOSE 7505/tcp

RUN apk add --update openssl openvpn=${OPENVPN_VERSION} \
 && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/sbin/openvpn"]
CMD []
