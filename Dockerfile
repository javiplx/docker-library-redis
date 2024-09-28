FROM redis:6-alpine

COPY docker-envtrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-envtrypoint.sh"]
