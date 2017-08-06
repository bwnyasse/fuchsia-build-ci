FROM bwnyasse/fuchsia-prebuild-ci


RUN apt-get -y install genisoimage

VOLUME /root/work

COPY setup.sh /

RUN chmod +x setup.sh \
    && /bin/bash /setup.sh

RUN genisoimage -o /root/fuchsia.iso /root/fuchsia