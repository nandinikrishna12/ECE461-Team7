# syntax=docker/dockerfile:1

FROM golang:1.18

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . ./

# RUN export $(xargs <.env)

#run install
# ARG MONGOURI
# ENV MONGOURI $MONGOURI

RUN go mod tidy
RUN go mod download

#run build
RUN cd main; go build -o main main.go

RUN apt-get update && apt-get upgrade -y && apt-get install -y nodejs npm   
RUN npm i react-scripts
RUN npm install react react-dom --save
RUN npm i web-vitals --save-dev


# EXPOSE 5500
EXPOSE 3000

#run main
CMD HOME=/root ./main/main & cd assets && npm start

# docker run --env-file=.env alpine env
# docker build --tag webservice .
# docker run --publish 5500:5500 webservice
# docker run --publish 3000:3000 webservice