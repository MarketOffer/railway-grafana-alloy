FROM grafana/alloy:latest

COPY alloy-config.alloy /etc/alloy/config.alloy

EXPOSE 3100 9091

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["exec alloy run --server.http.listen-addr=0.0.0.0:${PORT:-8080} --storage.path=/var/lib/alloy/data /etc/alloy/config.alloy"]
