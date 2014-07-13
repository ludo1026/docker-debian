# mongodb - run.sh

# Start SSH
/usr/sbin/sshd

service mongod start

tail -f /var/log/mongodb/mongod.log