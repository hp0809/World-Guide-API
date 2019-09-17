CREATE TABLE IF NOT EXISTS countries (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    map TEXT NOT NULL,
    flag TEXT NOT NULL,
    capital TEXT NOT NULL,
    language TEXT NOT NULL,
    currency TEXT NOT NULL,
    currency_code TEXT NOT NULL
)
