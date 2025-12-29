FROM amazonlinux:latest
ARG GO_VERSION
RUN yum install -y wget tar gzip make gcc
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
ENV PATH="${PATH}:/usr/local/go/bin"
