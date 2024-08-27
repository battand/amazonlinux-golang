FROM amazonlinux:latest
RUN yum install -y wget tar gzip make gcc
RUN wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz
ENV PATH="${PATH}:/usr/local/go/bin"
