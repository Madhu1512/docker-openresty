FROM openresty/openresty:alpine-fat

# Add OpenResty stuff to path
ENV PATH=/usr/local/openresty/luajit/bin:/usr/local/openresty/nginx/sbin:/usr/local/openresty/bin:$PATH

RUN apk add --no-cache openssl-dev git bash \
    python py-setuptools py-pip curl \
    bash ca-certificates openssl nodejs tar && \
    pip install --upgrade pip && \
    pip install supervisor==3.3.1 && \
    apk del py-pip && \
    luarocks install lua-resty-openidc
