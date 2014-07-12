FROM ssh

# doc : http://docs.mongodb.org/manual/tutorial/install-mongodb-on-debian/
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update
RUN apt-get install mongodb-org

ADD run.sh /run.sh
RUN chmod +x /*.sh

# --- docker run ---
CMD ["/run.sh"]
