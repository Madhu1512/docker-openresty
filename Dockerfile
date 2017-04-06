FROM openresty/openresty:1.11.2.2-alpine-fat

RUN apk add --no-cache openssl-dev git bash ca-certificates nodejs tar && \
    /usr/local/openresty/luajit/bin/luarocks install lua-resty-openidc && \
    /usr/local/openresty/luajit/bin/luarocks install lua-api-gateway-aws &&\
    /usr/local/openresty/luajit/bin/luarocks install lua-api-gateway-cachemanager
