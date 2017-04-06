FROM openresty/openresty:alpine-fat

RUN apk add --no-cache openssl-dev git node bash ca-certificates nodejs tar && \
    /usr/local/openresty/luajit/bin/luarocks install lua-resty-openidc && \
    /usr/local/openresty/luajit/bin/luarocks install lua-api-gateway-aws &&\
    /usr/local/openresty/luajit/bin/luarocks install lua-api-gateway-cachemanager
