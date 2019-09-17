CREATE TABLE IF NOT EXISTS language (
    id SERIAL PRIMARY KEY,
    language_name TEXT NOT NULL,
    country_name TEXT REFERENCES countries(name) NOT NULL UNIQUE,
    hello TEXT NOT NULL,
    goodbye TEXT NOT NULL,
    thank_you TEXT NOT NULL,
    excuse_me TEXT NOT NULL,
    please TEXT NOT NULL,
    sorry TEXT NOT NULL,
    toilet TEXT NOT NULL,
    english TEXT NOT NULL,
    cost TEXT NOT NULL,
    would_like TEXT NOT NULL
)