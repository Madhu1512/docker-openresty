FROM openresty/openresty:alpine-fat

# Add OpenResty stuff to path
ENV PATH=/usr/local/openresty/luajit/bin:/usr/local/openresty/nginx/sbin:/usr/local/openresty/bin:$PATH

RUN apk add --no-cache openssl-dev git bash && \
    luarocks install lua-resty-openidc && \
    luarocks install lua-api-gateway-aws
