# Coin Exchange

Test application made for OneBitCode Bootcamp.

## Installation

This app runs on a docker container. Follow the steps to build an environment on your machine.

1. Make sure you have [docker](https://docker.com) and [docker-compose](https://docs.docker.com/compose/) installed.

2. Run `docker-compose build` to install all gems.

3. Run `docker-compose up` to start the application.

4. Tha app should be available on `http://localhost:3000`

> PS: These commands require a certain time to execute.

## Database

To create a database and run all migrations. Run:

```
docker-compose run --rm website rails db:create && docker-compose run --rm website rails db:migrate
```

## Tests

To run our tests, execute the same command above. But, instead we use the `rspec` to run tests.

```
docker-compose run --rm website rspec
```
