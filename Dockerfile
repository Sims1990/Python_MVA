FROM ubuntu:latest

LABEL Author="MalcolmSims"

RUN apt-get update -y
RUN apt-get install -y python-pip python3

#FlaskInstallation
RUN pip install --upgrade pip
RUN pip install Flask

#Adding files
COPY \Flask FlaskApp
WORKDIR /FlaskApp
ENTRYPOINT [ "python" ]
CMD [ "init.py" ]
#Expose Port
EXPOSE 5000