@echo off

isort --settings-file ./pyproject.toml .
black --config ./pyproject.toml .
flake8 --config=pyproject.toml .
ruff check .
ruff --fix .