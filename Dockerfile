FROM registry.redhat.io/ubi8/ubi:latest
USER 0
RUN dnf install iostat   -y
USER 1001
CMD ["sleep","infinity"]
