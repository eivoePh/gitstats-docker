# Run gitstats in docker

Gitstats is a statistics generator for git repositories. It examines the repository and produces some interesting statistics from the history of it.

This images base on `alphine 3.15`

## Usage

```sh
docker run --rm \
    -v /<YOUR_COMPUTER_PROJECT_GIT_RESP_DIR>:/resp  \ 
    -v /<YOU_COMPUTER_RESULT_DIR>:/out \
    gitstats:latest
```

`<YOUR_COMPUTER_PROJECT_GIT_RESP_DIR>` is you project will be scaned.

`<YOU_COMPUTER_RESULT_DIR>` is you result will be saved.

# Source Code

This images Dockerfile in [https://github.com/jiahualong/gitstats-docker](https://github.com/jiahualong/gitstats-docker)

Docker hub address [https://hub.docker.com/r/stanjia/gitstats](https://hub.docker.com/r/stanjia/gitstats)

Thanks gitstats Project [https://github.com/zixieTools/gitstats.git](https://github.com/zixieTools/gitstats.git)

Thanks docker-alpine-python2 Project [https://github.com/Docker-Hub-frolvlad/docker-alpine-python2](https://github.com/Docker-Hub-frolvlad/docker-alpine-python2) 