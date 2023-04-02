# syntax=docker/dockerfile:1

FROM golang:1.18

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . ./

# RUN export $(xargs <.env)

#run install
ARG MONGOURI
ENV MONGOURI $MONGOURI

RUN go mod tidy
RUN go mod download

#run build
RUN cd main; go build -o main main.go

EXPOSE 5500

#run main
CMD HOME=/root ./main/main ./main/test/txt

# docker run --env-file=.env alpine env
# docker build --tag webservice .
# docker run --publish 5500:5500 webservice
