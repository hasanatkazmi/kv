FROM gitpod/workspace-full

USER gitpod

RUN pyenv install 3.8.0
RUN pyenv shell 3.8.0
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python