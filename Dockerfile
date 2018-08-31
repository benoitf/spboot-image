FROM eclipse/centos_jdk8
RUN cd /tmp && git clone https://github.com/benoitf/spboot-example && cd spboot-example && mvn clean package && rm -rf /tmp/spboot-example

