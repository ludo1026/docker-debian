FROM ssh
# --- docker build ---

RUN apt-get install -y python g++ make checkinstall fakeroot sed
RUN src=$(mktemp -d) && cd $src
RUN wget -N http://nodejs.org/dist/node-latest.tar.gz
RUN tar xzvf node-latest.tar.gz && cd node-v*
RUN ./configure
RUN fakeroot checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install
RUN dpkg -i node_*

ADD run.sh /run.sh
RUN chmod +x /*.sh

# --- docker run ---
CMD ["/run.sh"]
