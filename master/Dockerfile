FROM menglong567:multichain-base

COPY ./setup-master.sh /root/setup-master.sh
RUN chmod a+x /root/setup-master.sh

ENTRYPOINT ["/bin/bash","/root/setup-master.sh","","","",""]