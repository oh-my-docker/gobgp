FROM alpine

ARG VERSION=2.20.0 TARGETARCH=amd64

RUN echo "I'm building for $TARGETARCH"
RUN wget https://github.com/osrg/gobgp/releases/download/v${VERSION}/gobgp_${VERSION}_linux_${TARGETARCH}.tar.gz && \
    tar zxf gobgp_${VERSION}_linux_${TARGETARCH}.tar.gz && \
    rm -rf gobgp_${VERSION}_linux_${TARGETARCH}.tar.gz && \
    mv gobgpd /usr/bin && \
    mv gobgp /usr/bin

CMD []
