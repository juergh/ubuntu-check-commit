all: lint tests

lint:
	yamllint action.yaml
	flake8 --max-line-length=100 ubuntu-check-commit tests/test_*
	pylint --disable=R0903,R0911 ubuntu-check-commit tests/test_*

tests:
	cd tests && ./test_ubuntu-check-commit

.PHONY: all lint tests
