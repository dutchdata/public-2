FROM golang:1.18
RUN git clone https://github.com/dutchdata/public.git
WORKDIR /go/public/server/

RUN go get github.com/labstack/echo/v4
RUN go get github.com/aws/aws-sdk-go
RUN go get golang.org/x/crypto
RUN go get golang.org/x/net
RUN go get github.com/golang-jwt/jwt
RUN go get github.com/valyala/fasttemplate
RUN go get golang.org/x/time
RUN go get github.com/mattn/go-colorable
RUN go get github.com/mattn/go-isatty
RUN go get github.com/valyala/bytebufferpool
RUN go get golang.org/x/sys
RUN go get golang.org/x/text
RUN go get github.com/jmespath/go-jmespath

EXPOSE 8080
CMD ["go","run","main.go"]