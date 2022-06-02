install:
	pip install --upgrade pip
	pip install -r requirements.txt

format:
	black devopslib tests

clean:
	rmdir /s /q venv

lint:
	pylint	--disable=R,C	devopslib tests

test:
	python -m pytest -v tests --cov=devopslib

all:	install lint format	test
