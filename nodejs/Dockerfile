FROM ssh

# doc : https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
RUN apt-get install -y python g++ make checkinstall fakeroot sed
RUN cd /tmp
RUN wget -N http://nodejs.org/dist/node-latest.tar.gz
RUN tar xzvf node-latest.tar.gz
RUN cd node-v* && ./configure && fakeroot checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install && dpkg -i node_*

# --- docker run ---
CMD ["/usr/sbin/sshd", "-D"]