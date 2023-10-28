# rss-aggregator

## Add .env file with following properties:
PORT=<port_number>
DB_URL=postgres://user_id:password@localhost:5432/rssagg?sslmode=disable

## run command : go build && ./rss-aggregator

## workaround to execute sqlc generate on windows : 
1. docker run --rm -v "<root>:/src" -w /src kjconroy/sqlc generate
2. Exceute sqlc generate using WSLs