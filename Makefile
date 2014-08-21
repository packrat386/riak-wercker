all:
	-riak stop
	cp app.config /etc/riak/riak.conf
	cp limits.conf /etc/security/limits.conf
	riak start
