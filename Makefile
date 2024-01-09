all: lint_all

lint_backend:
	mypy --check-untyped-defs --ignore-missing-imports *.py
	pip-audit --ignore-vuln PYSEC-2022-43059

format_backend:
	black --line-length 79 *.py

check_backend:
	make format_backend
	make lint_backend

lint_frontend:
	cd frontend && npm run lint

lint_all:
	make lint_frontend
	make lint_backend
