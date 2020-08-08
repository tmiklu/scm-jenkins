FROM nginx:1.18.0

LABEL maintainer="tmiklu"

HEALTHCHECK --interva=5m \
            --timeout=3s \
            CMD curl -f http://localhost || exit 1
