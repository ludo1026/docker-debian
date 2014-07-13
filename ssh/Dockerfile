FROM debian:wheezy

# --- docker build ---

# Install
RUN apt-get update
RUN apt-get install -y locate nano vim procps curl wget sudo less lsof net-tools screen git
RUN apt-get install -y software-properties-common python-software-properties

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN chmod u+s /usr/bin/screen && chmod 755 /var/run/screen

# Users
RUN useradd -m -p docker docker
RUN echo 'docker:docker' |chpasswd
RUN echo 'root:docker' |chpasswd

# Network : port 22
EXPOSE 22

# --- docker run ---
CMD    ["/usr/sbin/sshd", "-D"]
