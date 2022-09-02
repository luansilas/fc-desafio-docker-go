FROM golang:1.18 as go

WORKDIR /app
COPY . .

RUN go build main.go

FROM scratch

# RUN mkdir /app
WORKDIR /app
COPY --from=go /app/main .
CMD ["/app/main"]


