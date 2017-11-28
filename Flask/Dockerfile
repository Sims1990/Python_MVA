FROM ubuntu:latest

LABEL Author="MalcolmSims"

RUN apt-get update -y
RUN apt-get install -y python-pip python3

#Adding files
COPY \Flask FlaskApp
ENV HOME=/Flaskapp
WORKDIR /Flaskapp

#FlaskInstallation
RUN pip install --upgrade pip
RUN pip install Flask

#Expose Port
EXPOSE 5000