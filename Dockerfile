FROM redis:6-alpine

COPY docker-envtrypoint.sh /usr/local/bin/

CMD ["redis-server", "--appendonly", "no", "--maxmemory", "16mb", "--requirepass", "changeme"]
