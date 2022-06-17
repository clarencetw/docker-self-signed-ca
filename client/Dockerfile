FROM ubuntu:20.04

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --no-install-recommends \
            wget curl ca-certificates \
 && apt-get autoremove -y \
 && rm -rf /root/.cache

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh 
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["curl"]
