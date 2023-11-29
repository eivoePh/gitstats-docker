.PHONY: build gitstats docker image
build:
	docker build -t stanjia/gitstats:0.1 -f ./Dockerfile .
	docker tag stanjia/gitstats:0.1 stanjia/gitstats:latest

.PHONY: run gitstats in a command line, programe will run in a container and output result to /out
run:
	docker run --rm -v /your_computer_project_git_resp_dir:/resp  -v /you_computer_result_dir:/out gitstats:latest

.PHONY: push docker images to docker hub
push:
	docker push stanjia/gitstats:0.1
	docker push stanjia/gitstats:latest