TAG1=registry.ford.com/den-org/netshoot:latest
TAG2=den-org/netshoot:0.1
docker build -f Dockerfile \
 -t  $TAG1 \
 -t  $TAG2 .

#
#
#netcat $REDIS_HOST  $REDIS_IP
#

#export REDIS_AUTH_STR=fdc9c4af-bbc7-4858-ae6c-6360650df0db
#netcat $REDIS_HOST  $REDIS_PORT
#
#redis-cli -h $REDIS_HOST -a $REDIS_AUTH_STR -p $REDIS_PORT --tls --cacert .creds/preprod/redis/server-ca.pem
#./redis-cli -h $REDIS_HOST -a $REDIS_AUTH_STR -p $REDIS_PORT --tls --cacert /Volumes/data01/ford-gcp/gcp-pipelines/.creds/preprod/server-ca.pem

