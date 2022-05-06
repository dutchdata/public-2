FROM golang:1.18
SHELL ["/bin/bash", "-c"]
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# RUN apt-get update && apt-get dist-upgrade -y
# # RUN apt-get install apt-utils -y
# RUN apt-get install curl -y
# RUN apt-get install git -y
# RUN curl -OL https://go.dev/dl/go1.18.1.linux-amd64.tar.gz
# RUN tar -C /usr/local -xzf go1.18.1.linux-amd64.tar.gz
# # RUN echo "export PATH=$PATH:/usr/local/go/bin" >> .profile
# RUN export PATH=$PATH:/usr/local/go/bin
# RUN source .profile
# RUN go version
RUN git clone https://github.com/dutchdata/public.git

WORKDIR /go/public


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
# CMD ["echo","$PATH"]
# CMD ["pwd"]
CMD ["go","run","s3-tool.go"]