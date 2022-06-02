info:
	@echo "############################################################################################################"
	@echo "First create a venv environment & activate it, next run make all"
	@echo "make all is a chain of commands: install lint format test"
	@echo "make install : install all dependencies of requirements.txt"
	@echo "make format: apply black formatting"
	@echo "make lint: apply pylint linting"
	@echo "make test: apply pytest testing & code coverage"
	@echo "make clean: clean up by deletion venv file from the project"
	@echo "############################################################################################################"

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

all:	install format lint test
