FROM fedora:latest
USER 0
RUN dnf install dstat iotop parted fdisk  -y
USER 1001
CMD ["sleep","infinity"]
