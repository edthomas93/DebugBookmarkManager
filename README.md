# Debugging 2

Tightening the loop and getting visibility (on the web).

## Learning Objectives

- Define 'debugging' as the process of eliminating bugs from an expected program output
- Explain the mantra 'Tighten the loop; Get visibility'
- Use the mantra to resolve bugs across the web stack.

## Instructions

In this program, there are many bugs. You have three objectives:

- Find the bugs and fix them.
- You need to get all the tests passing.
- You need to run the app and make sure it works.
- If you find a bug that is not covered by a test, write a test before fixing the bug

Use this debugging method:

- Tighten the loop
- Get visibility
- Once you know the _one thing_ that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.
- If your attempts to fix the bug do not change the error message, be _very_ suspicious and seriously consider reverting that change!


## Setup

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

## Run the tests

- Run the tests with `rspec`.

## Run the app

- Run the app with `shotgun`.  This will automatically reload your changes so you don't need to restart your server on each code change.

- Browse the app at the URL in your server logs.
