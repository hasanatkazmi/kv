# kv

Install pyenv: `brew update && brew install pyenv`

Install Python: `pyenv install 3.8.0 && pyevn global 3.8.0`

Install Poetry: `curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python`

Build: `poetry install && poetry run pytest tests/ && poetry build`
