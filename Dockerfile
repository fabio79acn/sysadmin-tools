FROM fedora:latest
USER 0
RUN dnf install dstat parted  pcp-system-tools pcp-doc procps-ng perf psmisc hostname iproute sysstat iotop conntrack-tools procps-ng ethtool numactl psmisc hostname iproute sysstat net-tools procps-ng util-linux vim -y
USER 1001
CMD ["sleep","infinity"]
