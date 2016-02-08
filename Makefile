clean:
	docker-compose down

build:
	docker-compose build

start: clean
	docker-compose up -d postgres

connect: start
	sleep 5
	docker-compose run app
