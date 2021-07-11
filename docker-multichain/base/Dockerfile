FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
        && apt-get upgrade -q -y \
        && apt-get dist-upgrade -q -y \
        && apt-get install -q -y wget curl \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
COPY 2.0.3/multichain-cli /usr/local/bin/multichain-cli
COPY 2.0.3/multichain-util /usr/local/bin/multichain-util
COPY 2.0.3/multichaind /usr/local/bin/multichaind
COPY 2.0.3/multichaind-cold /usr/local/bin/multichaind-cold
CMD ["/bin/bash"]