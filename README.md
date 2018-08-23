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
 -v /path/to/config/directory:/statsd \
 def1ne/docker-statsd-zabbix-backend
```

2125 - statsd udp port

