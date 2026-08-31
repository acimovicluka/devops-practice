FROM alpine:latest

RUN apk add --no-cache bash

COPY sysinfo.sh /sysinfo.sh

RUN chmod +x /sysinfo.sh

ENTRYPOINT ["/sysinfo.sh"]

# DOCKERFILE FOR IMAGE 
