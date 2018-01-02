CREATE TABLE users (
  id serial PRIMARY KEY,
  first_name text,
  last_name text,
  email_address text NOT NULL,
  screen_name text NOT NULL
);

CREATE TABLE posts (
  id serial PRIMARY KEY,
  author text REFERENCES users,
  title text PRIMARY KEY,
  content text,
  published_timestamp DATE DEFAULT CURRENT_DATE,
);

CREATE TABLE comments (
  id serial PRIMARY KEY,
  author_id INT REFERENCES users,
  post_id INT REFERENCES posts,
  comment text NOT NULL,
);

CREATE TABLE tags (
  tag_text text NOT NULL,
  id serial PRIMARY KEY
);

CREATE TABLE posts_tags (
  post_id INT REFERENCES posts,
  tag_id INT REFERENCES tags,
  PRIMARY KEY (post_id, tag_id)
);
