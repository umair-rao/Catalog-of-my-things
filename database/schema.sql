 CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  published_date DATE NOT NULL,
  archived BOOLEAN NOT NULL DEFAULT false,
  type VARCHAR(50) NOT NULL,
  publisher VARCHAR(100),
  cover_state VARCHAR(50),
  on_spotify BOOLEAN,
  silent BOOLEAN,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);
CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL
);
CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  color VARCHAR(50) NOT NULL
);
CREATE TABLE sources (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  author_id INTEGER NOT NULL,
  genre_id INTEGER NOT NULL,
  label_id INTEGER,
  source_id INTEGER,
  FOREIGN KEY (id) REFERENCES items(id)
);
