#Nginx DockerFile

FROM nginx:latest

COPY \Flask /usr/share/nginx/html
VOLUME [ "/FlaskApp" ]
VOLUME [ "/FlaskApp/FlaskApp" ]
VOLUME [ "/FlaskApp/FlaskApp/static" ]
VOLUME [ "/FlaskApp/FlaskApp/templates" ]

EXPOSE 8080:80