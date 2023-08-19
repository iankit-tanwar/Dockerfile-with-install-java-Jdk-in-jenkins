FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y systemd systemd-sysv openjdk-17-jre-headless wget gnupg2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Enable systemd init system
CMD ["/sbin/init"]
