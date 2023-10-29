-- name: CreateUser :one
INSERT INTO users(id, created_at, upated_at, name, api_key)
VALUEs ($1, $2, $3, $4,
    encode(sha256(random()::text::bytea), 'hex')
)
RETURNING *;

-- name: GetUserByAPIKey :one
SELECT * FROM users where api_key = $1;