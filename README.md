Show a list of bookmarks

User Story 1:

As a user
So that I can revisit intersting web pages 
I want to view a list of saved bookmarks

| Verbs       | Nouns       |
| ----------- | ----------- |
| view        | bookmarks   |
|             | list        |

![](./class_model.png)

![](./domain_model.png)


psql Instructions
-----------------
* Type 'psql' into the command line
* Type 'CREATE DATABASE bookmark_manager;'
* Connect to the database with '\c bookmark_manager'
* Create a new table by typing 'CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));'