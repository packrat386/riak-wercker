all:
	-riak stop
	cp app.config /etc/riak/riak.conf
	cp limits.conf /etc/security/limits.conf
	riak start

run:
	-riak stop
	riak start
	/usr/sbin/riak-admin wait-for-service riak_kv riak@127.0.0.1
