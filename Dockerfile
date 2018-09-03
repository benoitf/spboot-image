FROM eclipse/centos_jdk8
RUN cd /tmp && git clone https://github.com/benoitf/spboot-example && cd spboot-example && mvn clean package && rm -rf /tmp/spboot-example
RUN sudo chgrp -R 0 /home/user && \
    sudo chmod -R g+rwX /home/user && \
    sudo rm -rf /tmp/*
