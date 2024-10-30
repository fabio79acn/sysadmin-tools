FROM fedora:latest
USER 0
RUN dnf install dstat parted  pcp-system-tools pcp-doc procps-ng perf psmisc hostname iproute sysstat iotop conntrack-tools procps-ng ethtool numactl psmisc hostname iproute sysstat net-tools procps-ng util-linux rsync less vim tcpdump jq s3cmd fio python3-requests git python3-setuptools python3-pip python3-wheel unzip java-11-openjdk-devel -y
RUN pip install awxkit
USER 1001
CMD ["sleep","infinity"]
