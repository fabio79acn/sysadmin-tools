FROM fedora:latest
USER 0
RUN dnf install dstat iotop parted  pcp-system-tools pcp-doc sysstat -y
USER 1001
CMD ["sleep","infinity"]
