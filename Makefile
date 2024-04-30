build-docker:
	docker build --platform linux/amd64 -t lambda-handler .
run-docker:
	docker run --platform linux/amd64 -p 9000:8080 lambda-handler
invoke:
	curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'
run:
	docker compose up -d