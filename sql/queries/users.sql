-- name: CreateUser :one
INSERT INTO users(id, created_at, upated_at, name)
VALUEs ($1, $2, $3, $4)
RETURNING *;