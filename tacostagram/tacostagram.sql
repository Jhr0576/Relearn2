
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  real_name TEXT,
  user_name TEXT,
  location TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  image_file TEXT,
  posted_at TEXT,
  user_id INTEGER
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  body TEXT 
);

CREATE TABLE followers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_user_id INTEGER,
  following_user_id INTEGER 
);