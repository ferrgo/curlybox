ARG BB_VERSION=1.33.1

FROM busybox:${BB_VERSION}

ARG CURL_BIN_URL=https://github.com/moparisthebest/static-curl/releases/download/v7.76.1/curl-amd64

RUN wget -O curl ${CURL_BIN_URL} \
    && chmod +x curl \
    && mv curl /bin/curl