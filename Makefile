
install:
	pip install --upgrade pip
	pip install -r requirements.txt

format:
	black devopslib test


lint:
	pylint	--disable=R,C	devopslib test

test:
	python -m pytest -vv --cov=devopslib

all:	install lint format test
