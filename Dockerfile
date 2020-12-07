FROM alpine

ARG VERSION=2.20.0

RUN wget https://github.com/osrg/gobgp/releases/download/v${VERSION}/gobgp_${VERSION}_linux_amd64.tar.gz && \
    tar zxf gobgp_${VERSION}_linux_amd64.tar.gz && \
    rm -rf gobgp_${VERSION}_linux_amd64.tar.gz && \
    mv gobgpd /usr/bin && \
    mv gobgp /usr/bin

CMD []
