# TDA357 with Docker
This repository contains a few configuration files for Docker and Docker Compose in order to build up and tear down a PostgreSQL database. It is intended to help learning the SQL syntax by automatically running your SQL scripts when the Postgres server is created.

## Requirements
You need to have Docker and Docker Compose installed. You also need to have `make` installed. `make` is included on OS X and most Linux distributions; Windows -- not so much, google for instructions on how to install `make`.

## How to use
The short version: place your SQL files in the `sql` folder, and run the command `make connect`. **Be warned**: if you run `make connect` and make some changes to the database, *all your changes will be lost!*. Any changes you want to save should be placed in an SQL file in the `sql` folder. See the slightly longer version below for an explanation.

The slightly longer version:

Place your SQL files in the `sql` folder, and make sure to name them in the order you want them to run. For example, `001-schema.sql` will run before `002-insert.sql`, which will run before `003-alter.sql`, etc.

What the `make connect` command does is that it first makes sure your database is not running, by stopping and removing any containers that are currently running. It then builds a new container image and starts the database container. Lastly, it tries to connect to the database until it succeeds.

Have a look at the `Makefile` for the technical details.
