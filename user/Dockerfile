FROM   golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S ifgroup
RUN adduser -S -D -h /app ifuser ifgroup
RUN chown -R ifuser:ifgroup /app

USER ifuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go