FROM python:3.7-alpine
MAINTAINER Tboost Technology
#set environment variable
ENV PYTHONUNBUFFERED 1

#install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#mkdir to store your apps source code
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#create user to run apps in the docker
RUN adduser -D user
#switch to the user
USER user



