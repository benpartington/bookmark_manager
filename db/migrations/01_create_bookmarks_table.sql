CREATE DATABASE "bookmark_manager_test";
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);
