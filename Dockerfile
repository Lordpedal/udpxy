# Alpine v3
FROM alpine:latest as builder
LABEL maintainer "Lordpedal"

# Instalacion dependencias
RUN apk update && apk add make gcc libc-dev

# Compila UDPXY
WORKDIR /tmp
RUN wget -O udpxy-src.tar.gz http://www.udpxy.com/download/udpxy/udpxy-src.tar.gz \
    && tar zxf udpxy-src.tar.gz \
    && cd udpxy-* && make && make install

# Alpine v3
FROM alpine:latest
LABEL maintainer "Lordpedal"

# Arranque Docker
COPY --from=builder /usr/local/bin/udpxy /usr/local/bin/udpxy
COPY --from=builder /usr/local/bin/udpxrec /usr/local/bin/udpxrec

ENTRYPOINT ["/usr/local/bin/udpxy"]
CMD ["-v", "-T", "-p", "2112"]
