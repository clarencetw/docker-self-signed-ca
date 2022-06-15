FROM alpine:latest
RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY rootCA.crt /usr/local/share/ca-certificates/rootCA.crt
COPY server.crt /usr/local/share/ca-certificates/server.crt
RUN update-ca-certificates

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh 
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["curl"]
