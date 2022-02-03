FROM golang:1.17-alpine AS primeiro

COPY . .

RUN go build print.go 

#CMD [ "./print"]

FROM scratch

COPY --from=primeiro /go/print .

CMD ["./print"]

#CMD [ "go", "run", "print.go"]