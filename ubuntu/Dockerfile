#get oficial docker image
FROM ubuntu:18.04

#mount the dir
VOLUME /root/host

WORKDIR /root

# Prepare for wallet
RUN apt update
RUN apt install -y wget sudo
RUN wget https://github.com/ShorelineCrypto/cheetahcoin/releases/download/v1.6.0.1/cheetahcoin_v1.6.0.1_ubuntu18.04_x86_64.tgz
RUN tar -xvzf cheetahcoin_v1.6.0.1_ubuntu18.04_x86_64.tgz
RUN cd Ubuntu_18.04/x86_64; sh prepare_neng.sh

# Install wallet
RUN cd ~
RUN wget https://github.com/ShorelineCrypto/cheetahcoin/releases/download/v1.6.0.0/cheetahcoin_v1.6.0.0_ubuntu16.04.tgz
RUN tar xvfz cheetahcoin_v1.6.0.0_ubuntu16.04.tgz
RUN mkdir ~/.cheetahcoin
RUN cp cheetahcoin_v1.6.0.0_ubuntu16.04/cheetahcoin.conf  ~/.cheetahcoin/
RUN cp cheetahcoin_v1.6.0.0_ubuntu16.04/cheetahcoind /usr/local/bin

# Install cheeta
RUN wget https://github.com/ShorelineCrypto/cheetah_cpuminer/archive/refs/tags/chta-beta2.tar.gz
RUN tar xvfz chta-beta2.tar.gz
RUN chmod +x cheetah_cpuminer-chta-beta2/cheetah.sh


COPY ./cmd.sh /root/cmd.sh
RUN chmod +x cmd.sh
CMD ["/root/cmd.sh"]

COPY ./entrypoint.sh /root/entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]