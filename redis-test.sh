export REDIS_HOST=10.16.0.140
export REDIS_PORT=6378
export REDIS_AUTH_STR=fdc9c4af-bbc7-4858-ae6c-6360650df0db
redis-cli -h $REDIS_HOST $REDIS_PORT --tls --cacert server-ca.pem
redis-cli -h $REDIS_HOST -a $REDIS_AUTH_STR -p $REDIS_PORT --tls --cacert ./server-ca.pem
#openssl s_client -connect ${REDIS_HOST}:${REDIS_PORT} -cert server-ca.pem -key server-ca.pem
