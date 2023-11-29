# alphine 3.15 has python 2 env
FROM --platform=$TARGETPLATFORM alpine:3.15 AS base

# This hack is widely applied to avoid python printing issues in docker containers.
# See: https://github.com/Docker-Hub-frolvlad/docker-alpine-python3/pull/13
ENV PYTHONUNBUFFERED=1
RUN apk update && apk add --no-cache python2

RUN mkdir /resp
RUN mkdir /out
RUN apk add --no-cache git gnuplot
RUN git clone https://github.com/zixieTools/gitstats.git /gitstats

WORKDIR /gitstats
CMD ["python","gitstats.py","/resp","/out"]