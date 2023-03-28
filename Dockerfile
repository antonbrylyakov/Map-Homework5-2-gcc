FROM ubuntu:16.04
RUN apt update
RUN apt -y install g++ cmake git
RUN git clone https://github.com/antonbrylyakov/Map-Homework1.git /src
WORKDIR /src
WORKDIR out
RUN cmake ..
RUN make
ENTRYPOINT ["/src/out/homework"]
