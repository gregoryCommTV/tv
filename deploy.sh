#build image
docker build -t gregory_commons_tv .

#stop docker image is running
docker stop $(docker ps -q --filter ancestor=gregory_commons_tv )

#run image
docker run -p 9000:8000 gregory_commons_tv