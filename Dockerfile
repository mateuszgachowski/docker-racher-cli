FROM alpine:latest
WORKDIR /opt
RUN apk add curl
RUN curl -O https://releases.rancher.com/cli/v0.6.7/rancher-linux-amd64-v0.6.7.tar.gz
RUN tar -xvf rancher-linux-amd64-v0.6.7.tar.gz
RUN rm -rf rancher-linux-amd64-v0.6.7.tar.gz
RUN mv rancher-v0.6.7/rancher /usr/local/bin
RUN chmod a+x /usr/local/bin/rancher
RUN rancher
CMD ["rancher"]
