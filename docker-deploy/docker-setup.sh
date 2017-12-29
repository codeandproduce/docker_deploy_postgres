docker run \
	--name chanwoo-postgres \
	--env-file /root/postgres/env.list \
	-v /root/postgres:/var/lib/postgresql/data \
	-p 0.0.0.0:5432:5432 \
	-d postgres
