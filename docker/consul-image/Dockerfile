FROM danielsomerfield/base-image

RUN mkdir -p /opt/consul
ADD files /opt/consul/
RUN chmod +x /opt/consul/*.sh
RUN /opt/consul/install-consul.sh

EXPOSE 8300 8301 8302 8400 8500 8600
ENTRYPOINT ["/opt/consul/run-consul.sh"]