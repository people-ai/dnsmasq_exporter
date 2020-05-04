# build stage
FROM golang:1.14.2-stretch@sha256:288643defd9f1a1f9ef16a946e07c1d9350bf0c1bebd8b8c6e5526d29f94a45c AS build-env
ADD . /src
ENV CGO_ENABLED=0
WORKDIR /src
RUN go build -o dnsmasq_exporter

# final stage
FROM scratch
WORKDIR /app
COPY --from=build-env /src/dnsmasq_exporter /app/
USER 65534
ENTRYPOINT ["/app/dnsmasq_exporter"]
