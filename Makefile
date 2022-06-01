
install:
	pip install --upgrade pip
	pip install -r requirements.txt

format:
	black devopslib test


lint:
	pylint	--disable=R,C	devopslib test

test:
	python -m pytest -v tests --cov=devopslib

all:	install format lint tests
