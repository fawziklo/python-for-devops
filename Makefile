
install:
	pip install --upgrade pip
	pip install -r requirements.txt

format:
	black devopslib tests


lint:
	pylint	--disable=R,C	devopslib tests

test:
	python -m pytest -v tests --cov=devopslib

all:	install format lint test
