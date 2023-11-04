-- name: CreatePost :one
INSERT INTO posts(id, created_at, upated_at, title, description, published_at, url, feed_id)
VALUEs ($1, $2, $3, $4, $5, $6, $7, $8)
RETURNING *;
