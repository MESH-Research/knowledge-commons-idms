FROM docker:dind

WORKDIR /repo
RUN apk add --no-cache git bash util-linux
RUN ln -s /bin/getopt /usr/bin/getopt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]