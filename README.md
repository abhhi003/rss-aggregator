# rss-aggregator

## Add .env file with following properties:
1. PORT=<port_number>
2. DB_URL=postgres://user_id:password@localhost:5432/rssagg?sslmode=disable
3. LIMIT=2 #Limit no of post in /posts call
4. SCRAP_INTERVAL_IN_MIN=10 #interval of background rss collector job
5. LOG_FILE=rss-agg.log

## run command : go build && ./rss-aggregator

## workaround to execute sqlc generate on windows : 
1. docker run --rm -v "<root>:/src" -w /src kjconroy/sqlc generate
2. Exceute sqlc generate using WSLs
