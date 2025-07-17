FROM fedora:latest
USER 0
RUN dnf install dstat parted  pcp-system-tools pcp-doc procps-ng perf psmisc hostname iproute sysstat iotop conntrack-tools procps-ng ethtool numactl psmisc hostname iproute sysstat net-tools procps-ng util-linux rsync less vim tcpdump jq s3cmd fio python3-requests git python3-setuptools python3-pip python3-wheel unzip  maven wireshark -y
RUN pip install awxkit

#  OC
RUN cd  /tmp && wget 'https://access.cdn.redhat.com/content/origin/files/sha256/96/96b089dd1220b315ed281940842fa0949a5c852ca2ed2b0a84997e5cb4db9da6/openshift-client-linux-amd64-rhel9-4.19.3.tar.gz?user=3abec53ac288a68863fb623170862d04&_auth_=1752499371_68438d4acc84e4e3cb1a92baf58d2375' -O openshift-client-linux-amd64-rhel9-4.19.3.tar.gz  
RUN tar -xzvf  openshift-client-linux-amd64-rhel9-4.19.3.tar.gz
RUN rm  -f     openshift-client-linux-amd64-rhel9-4.19.3.tar.gz
#

USER 1001
CMD ["tail", "-f", "/dev/null"]
#CMD ["sleep","infinity"]



