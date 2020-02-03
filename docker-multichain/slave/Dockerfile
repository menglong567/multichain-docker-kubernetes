FROM menglong567:multichain-base
MAINTAINER Leo

COPY ./setup-slave.sh /root/setup-slave.sh
RUN chmod a+x /root/setup-slave.sh

ENTRYPOINT ["/bin/bash","/root/setup-slave.sh","","","","","",""]