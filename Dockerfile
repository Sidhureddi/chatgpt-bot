FROM python:3.11-alpine as base

RUN apk add gcc cmake git python3-dev

RUN pip install --upgrade pip

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY . /app

WORKDIR /app

ENTRYPOINT ["python", "main.py"]