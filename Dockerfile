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
# App
ENV APPNAME=
WORKDIR /app
VOLUME /app
CMD ["/bin/sh", "-c", "pip install --no-cache-dir -r /app/requirements.txt && python $APPNAME"]
