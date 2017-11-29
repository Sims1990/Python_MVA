#Nginx DockerFile

FROM nginx:latest

COPY \Flask /usr/share/nginx/html
RUN sudo pip install virtualenv
RUN pip install Flask
VOLUME [ "/FlaskApp" ]
VOLUME [ "/FlaskApp/FlaskApp" ]
VOLUME [ "/FlaskApp/FlaskApp/static" ]
VOLUME [ "/FlaskApp/FlaskApp/templates" ]

EXPOSE 8080:80