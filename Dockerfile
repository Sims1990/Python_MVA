FROM ubuntu:latest

LABEL Author="MalcolmSims"

#update image
RUN apt-get update -y

#Install python development tools
RUN apt-get install -y python-pip python3 python-dev nginx

#install other stuff
RUN apt-get install nano

#FlaskInstallation
RUN pip install --upgrade pip
RUN pip install flask gunicorn

#Adding files
COPY \Flask FlaskApp
WORKDIR /FlaskApp
#ENTRYPOINT [ "python" ]
#CMD [ "init.py" ]
#Expose Port
EXPOSE 80
EXPOSE 5000
CMD [ "python init.py" ]
