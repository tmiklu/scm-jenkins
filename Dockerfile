FROM nginx:1.18.0

LABEL maintainer="tmiklu"

HEALTHCHECK --interval=5m \
            --timeout=3s \
            CMD curl -f http://localhost:8080 || exit 1
        
 EXPOSE 8080
