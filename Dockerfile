FROM python:3-alpine
# Install base packages
RUN apk update
RUN apk upgrade
RUN apk add ca-certificates && update-ca-certificates
RUN apk add --update tzdata
# Change TimeZone
ENV TZ=America/Santiago
# Clean APK cache
RUN rm -rf /var/cache/apk/*
# Upgrade pip and install pipenv
RUN pip install --upgrade pip
RUN pip install pipenv
# App
ENV APPNAME=
WORKDIR /app
VOLUME /app
CMD ["/bin/sh", "-c", "pipenv install && pipenv run python $APPNAME"]
