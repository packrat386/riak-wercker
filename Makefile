all:
	-riak stop
	cp app.config /etc/riak/riak.conf
	cp limits.conf /etc/security/limits.conf
	ulimit -n 65536
	riak start

run:
	-riak stop
	ulimit -n 65536
	riak start
	/usr/sbin/riak-admin wait-for-service riak_kv riak@127.0.0.1
