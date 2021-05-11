FROM python:3.7-alpine
MAINTAINER Steven Joseph Ceniza

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN addUser -D user
USER user