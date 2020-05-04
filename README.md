# dnsmasq exporter

dnsmasq_exporter is an exporter for [Prometheus](https://prometheus.io/),
allowing you to monitor/alert on the number of DHCP leases and various DNS
statistics.

The minimum required version of dnsmasq is 2.69, which added support for
querying the statistics via DNS.

See also the “cache statistics” section in
https://manpages.debian.org/stretch/dnsmasq-base/dnsmasq.8.en.html#NOTES

This is fork from not an official Google product.

## Installation

``` shell
go get -u github.com/people-ai/dnsmasq_exporter
```

## Usage

```shell
docker build -t dnsmasq_exporter .
docker run --restart=unless-stopped --net=host dnsmasq_exporter
```

