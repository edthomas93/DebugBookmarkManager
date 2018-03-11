# Bookmark Manager

An exemplar of the Bookmark Manager application, with sensible commits.

## Getting Started

> If you clone this app from the Initial Commit, you will have a ready-to-go application with RSpec, Sinatra, and Capybara installed. There's a small smoke test, too.

To get started with Bookmark Manager:

```
git clone https://github.com/sjmog/bookmark_manager_2
cd bookmark_manager_2
bundle install
```

This will give you the application.

```
psql
CREATE DATABASE bookmark_manager;
\c bookmark_manager
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, title VARCHAR(60), url VARCHAR(60));
CREATE DATABASE bookmark_manager_test;
\c bookmark_manager_test
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, title VARCHAR(60), url VARCHAR(60));
```

This will give you the databases required to pass the tests.