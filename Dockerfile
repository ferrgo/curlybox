FROM alpine as build
RUN apk update \
    && apk add ca-certificates

ARG CURL_BIN_URL=https://github.com/moparisthebest/static-curl/releases/download/v7.76.1/curl-amd64

RUN wget -O curl ${CURL_BIN_URL} \
    && chmod +x curl \
    && mv curl /bin/curl

FROM busybox:1.33.1

COPY --from=build /etc/ssl/certs /etc/ssl/certs
COPY --from=build /bin/curl /bin/curl