TAG1=registry.ford.com/den-org/netshoot:latest
docker pull $TAG1
docker exec -it $TAG1 /bin/bash redis-test.sh
