-- name: CreateFeed :one
INSERT INTO feeds(id, created_at, upated_at, name, url, user_id)
VALUEs ($1, $2, $3, $4, $5, $6)
RETURNING *;

-- name: GetFeeds :many
SELECT * FROM feeds;

-- name: GetNextFeedsToFetch :many
SELECT * FROM feeds
ORDER BY last_fetched_at ASC NULLS FIRST
LIMIT $1;

-- name: MarkFeedAsFetched :one
UPDATE feeds
SET last_fetched_at = NOW(),
upated_at = NOW()
where id=$1
RETURNING *;