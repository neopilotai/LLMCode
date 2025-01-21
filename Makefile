update:
	sudo apt-get update

install:
	sudo apt-get install -y libportaudio2

pip:
	python -m pip install --upgrade pip
	pip install pytest
	pip install .

test:
	pytest

docker-build:
	docker build -t llmcode -f ./docker/Dockerfile .

venv:
	python -m venv venv
	. venv/bin/activate && pip install --upgrade pip

dependencies:
	python -m pip install --upgrade pip
	pip install build setuptools wheel twine importlib-metadata==7.2.1

build:
	python -m build

publish:
	python -m twine upload dist/*

format:
	black .
	isort .