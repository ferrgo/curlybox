FROM alpine:3.13.5 as build
RUN apk add --no-cache ca-certificates=20191127-r5 

ARG CURL_BIN_URL=https://github.com/moparisthebest/static-curl/releases/download/v7.76.1/curl-amd64

RUN wget -q -O curl ${CURL_BIN_URL} \
    && chmod +x curl \
    && mv curl /bin/curl

FROM busybox:1.33.1
COPY --from=build /etc/ssl/certs /etc/ssl/certs
COPY --from=build /bin/curl /bin/curl