# Docker image for Statsd with Zabbix backend

This image contains statsd daemon with zabbix backend.

* statsd repository: https://github.com/etsy/statsd
* statsd zabbix backend repository: https://github.com/parkerd/statsd-zabbix-backend

## Quick Start

You can run this container by command like:

```sh
docker run -d \
 --name statsd \
 --restart=always \
 -p 8125:8125/udp \
 def1ne/docker-statsd-zabbix-backend
```

Or you can run this container with provided config:

```sh
docker run -d \
 --name statsd \
 --restart=always \
 -p 8125:8125/udp \
 -v /path/to/config/directory/config.js:/statsd/config.js \
 def1ne/docker-statsd-zabbix-backend
```

2125 - statsd udp port

* statsd config reference: https://github.com/etsy/statsd/blob/master/exampleConfig.js
* statsd zabbix backend config reference: https://github.com/parkerd/statsd-zabbix-backend#configuration

