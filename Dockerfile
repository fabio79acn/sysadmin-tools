FROM fedora:latest
USER 0
RUN dnf install dstat iotop   -y
USER 1001
CMD ["sleep","infinity"]
