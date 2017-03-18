NAME=app
PACKAGE_NAME=docker_pyramid


all: run

cmd:
	bash -c 'docker-compose run --service-ports $(NAME) $(run)'

run:
	make cmd

check:
	make cmd run="py.test"

lint:
	make cmd run="pylint $(PACKAGE_NAME)"

flake8:
	make cmd run="flake8"

shell:
	docker-compose run $(NAME) /bin/bash
