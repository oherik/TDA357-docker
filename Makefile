clean:
	docker-compose down

build:
	docker-compose build

start: clean
	docker-compose up -d postgres

connect: start
	while ! docker-compose run app; do sleep 0.5; done
