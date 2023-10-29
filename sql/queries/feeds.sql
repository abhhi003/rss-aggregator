-- name: CreateFeed :one
INSERT INTO feeds(id, created_at, upated_at, name, url, user_id)
VALUEs ($1, $2, $3, $4, $5, $6)
RETURNING *;

-- name: GetFeeds :many
SELECT * FROM feeds;