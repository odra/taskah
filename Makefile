SHELL := /bin/bash
PY := poetry run python
MYPY := poetry run mypy
MYPY_OPTS := --strict
PYTEST = -m pytest
SRC_DIR := src
TEST_DIR := test

.PHONY: lint
lint:
	@ ${MYPY} ${MYPY_OPTS}  ${SRC_DIR}

.PHONY: test
test: lint
	@ ${PY} ${PYTEST} ${TEST_DIR}
