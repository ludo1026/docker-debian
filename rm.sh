echo "Stop container $1"
docker ps|sed "1 d"|grep "$1:latest"|awk '{print $1}'|xargs docker stop
echo "Remove container $1"
docker ps -a|sed "1 d"|grep "$1:latest"|awk '{print $1}'|xargs docker rm

