FROM ubuntu:20.04

RUN apt update 

WORKDIR src


COPY src/ .

CMD ["./main"]