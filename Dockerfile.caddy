FROM caddy:2.3.0-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/lolPants/caddy-requestid@v1.0.0 \
    --with github.com/caddyserver/format-encoder
#    --with github.com/hairyhenderson/caddy-teapot-module@v0.0.3-0

FROM caddy:2.3.0-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
