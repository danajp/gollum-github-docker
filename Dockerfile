FROM golang:1.22-alpine AS gh-token

RUN go install github.com/Link-/gh-token@latest

FROM gollumwiki/gollum:6.0.1

COPY --from=gh-token /go/bin/gh-token /usr/local/bin/gh-token
COPY bin/ /usr/local/bin/
