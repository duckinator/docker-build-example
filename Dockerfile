FROM alpine:edge AS build

RUN apk add --no-cache alpine-sdk make

COPY . /tmp/work
WORKDIR /tmp/work
RUN make

FROM alpine:latest

COPY --from=build /tmp/work/whaledo-demo /usr/local/bin

CMD whaledo-demo
