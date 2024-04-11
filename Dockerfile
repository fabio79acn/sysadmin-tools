FROM fedora:latest
USER 0
RUN dnf install iostat   -y
USER 1001
CMD ["sleep","infinity"]
