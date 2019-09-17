CREATE TABLE world_guide_users (
  id SERIAL PRIMARY KEY,
  user_name TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL,
  nickname TEXT,  
  date_created TIMESTAMP NOT NULL DEFAULT now()
);