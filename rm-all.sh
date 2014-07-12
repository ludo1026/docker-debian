docker ps|sed "1 d"|awk '{print $1}'|xargs docker stop
docker ps -a|sed "1 d"|awk '{print $1}'|xargs docker rm
