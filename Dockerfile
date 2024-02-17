FROM alpine:latest

RUN apk add --no-cache git git-lfs openssh-client

# runner:docker - required to allow further processing outside of the action
USER 1001:127

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
