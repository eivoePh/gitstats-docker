.PHONY: build gitstats docker image
build:
	docker build -t gitstats:0.1 -f ./Dockerfile .
	docker tag gitstats:0.1 gitstats:latest

.PHONY: run gitstats in a command line, programe will run in a container and output result to /out
run:
	docker run --rm -v /your_computer_project_git_resp_dir:/resp  -v /you_computer_result_dir:/out gitstats:latest

.PHONY: push docker images to docker hub
push:
	docker tag gitstats:0.1 stanjia/gitstats:0.1
	docker tag gitstats:0.1 stanjia/gitstats:latest
	docker push stanjia/gitstats:0.1
	docker push stanjia/gitstats:latest