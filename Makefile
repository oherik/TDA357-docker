clean:
	docker-compose down

build:
	docker-compose build

start: clean
	docker-compose up -d postgres

connect: start
	docker-compose run app

error: start
	docker-compose logs postgres
