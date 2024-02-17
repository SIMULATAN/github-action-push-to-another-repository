FROM alpine:latest

RUN apk add --no-cache git git-lfs openssh-client

# same IDs as the GitHub runner user
RUN addgroup -S docker -g 127 && adduser -S runner -G docker -u 1001

# runner:docker - required to allow further processing outside of the action
USER runner

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
