docker-debian
=============

Docker - Debian

Dependencies
------------

debian
  ssh
    jdk7
    jdk8
    mongodb

SSH
===
```
docker run -i -t ssh /bin/bash
docker run -d -P -p 10022:22 -p 3000:3000 -v /home/ludo/data/nodejs:/data nodejs
```


nodejs
======
```
docker run -d -P -p 10022:22 -p 3000:3000 -v /home/ludo/data/nodejs:/data nodejs
```
