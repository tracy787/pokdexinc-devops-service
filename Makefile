.PHONY: setup start test build

setup:
	./scripts/setup_env.sh

start:
	./scripts/start.sh

test:
	pytest -q

build:
	./scripts/build_image.sh pokdexinc/devops:local
