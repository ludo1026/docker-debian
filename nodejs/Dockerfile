FROM ssh
# --- docker build ---

RUN apt-get install nodejs

ADD run.sh /run.sh
RUN chmod +x /*.sh

# --- docker run ---
CMD ["/run.sh"]
