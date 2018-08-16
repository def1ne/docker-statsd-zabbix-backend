FROM node:6
RUN npm install -g statsd@0.8.0
RUN npm install -g statsd-zabbix-backend@0.9.0
RUN mkdir /statsd
RUN echo '{\n\
  flushInterval: 10000,\n\
  percentThreshold: [95, 99],\n\
  backends: ["statsd-zabbix-backend"],\n\
  zabbixHost: "localhost",\n\
}' >> /statsd/config.js

EXPOSE 8125/udp

CMD statsd /statsd/config.js