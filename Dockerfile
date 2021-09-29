FROM golang:1.16.4
RUN mkdir /gm-tool-global-ver

ADD . /gm-tool-global-ver

WORKDIR /gm-tool-global-ver

RUN go build -o main

RUN mkdir /gm-tool-global-ver/storage

CMD ["/gm-tool-global-ver/main"]