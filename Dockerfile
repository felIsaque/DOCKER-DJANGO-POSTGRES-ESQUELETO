FROM python:3
ENV PYTHONUNBUFFERED=1

RUN mkdir /src
COPY . /src/
WORKDIR /src/app

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install
