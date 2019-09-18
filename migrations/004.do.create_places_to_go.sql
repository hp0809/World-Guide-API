CREATE TABLE IF NOT EXISTS places_to_go (
    id SERIAL PRIMARY KEY,
    country_name TEXT NOT NULL,
    place1_name TEXT NOT NULL,
    place1_img TEXT NOT NULL,
    place1_link TEXT NOT NULL,
    place2_name TEXT NOT NULL,
    place2_img TEXT NOT NULL,
    place2_link TEXT NOT NULL,
    place3_name TEXT NOT NULL,
    place3_img TEXT NOT NULL,
    place3_link TEXT NOT NULL,
    place4_name TEXT NOT NULL,
    place4_img TEXT NOT NULL,
    place4_link TEXT NOT NULL
)