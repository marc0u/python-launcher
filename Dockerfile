FROM python:3.10-alpine
# Install base packages
RUN apk update
RUN apk upgrade
RUN apk add ca-certificates && update-ca-certificates
RUN apk add --update tzdata
# Change TimeZone
ENV TZ=America/Santiago
# Upgrade pip and install pipenv
RUN pip install --upgrade --no-cache-dir pip
RUN pip install --no-cache-dir pipenv
# Clean APK cache
RUN rm -rf /var/cache/apk/*
# App
ENV APPNAME=
WORKDIR /app
VOLUME /app
CMD ["/bin/sh", "-c", "pipenv install && pipenv run python $APPNAME"]
