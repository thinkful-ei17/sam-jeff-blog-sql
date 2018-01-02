

CREATE TABLE users (
  id integer NOT NULL,
  first_name text,
  last_name text,
  email_address text NOT NULL,
  screen_name text PRIMARY KEY NOT NULL
);

CREATE TABLE posts (
  id serial PRIMARY KEY,
  author text REFERENCES users,
  title text,
  content text,
  published_timestamp DATE DEFAULT CURRENT_DATE,
  comments INT NOT NULL DEFAULT 0,
  tags INT NOT NULL DEFAULT 0
);

CREATE TABLE comments (
  author text REFERENCES users,
  post_id integer REFERENCES posts,
  comment_text text NOT NULL,
);

CREATE tags (
  id serial PRIMARY KEY,
  tag_text text,
);

CREATE TABLE posts_tags (
  posts_id INT REFERENCES posts,
  tags_id INT REFERENCES tags
);
