FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential valgrind && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /temp

COPY ./entrypoint.sh /

WORKDIR /temp

ENTRYPOINT ["/entrypoint.sh"]
