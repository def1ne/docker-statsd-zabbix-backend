FROM node:6

RUN npm install -g statsd@0.8.0 && npm install -g statsd-zabbix-backend@0.9.0 && npm cache clean --force
RUN mkdir /statsd && echo '{\n\
  address: "0.0.0.0", \n\
  flushInterval: 10000,\n\
  percentThreshold: [],\n\
  backends: ["statsd-zabbix-backend"],\n\
  zabbixHost: "localhost",\n\
}' >> /statsd/config.js

EXPOSE 8125/udp
EXPOSE 8126/tcp

CMD statsd /statsd/config.js