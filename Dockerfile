# Docker image for Drone's slack notification plugin
#
#     docker build --rm=true -t plugins/drone-slack .

FROM alpine:3.2
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
ADD drone-slack /bin/
ENTRYPOINT ["/bin/drone-slack"]
