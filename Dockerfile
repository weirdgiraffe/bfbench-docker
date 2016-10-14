FROM weirdgiraffe/bench

RUN apt-get install -yq cmake make git clang llvm llvm-dev golang
RUN mkdir -p /go
ENV GOPATH=/go

ADD contest.bf /
ENTRYPOINT ["/bin/bash", "-x", "/benchmark"]

