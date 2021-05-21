FROM ubuntu:groovy-20210416
MAINTAINER parvez@grokkertech.com

RUN apt-get update && apt-get -y install cron

WORKDIR /app

# Copying the entrypoint file
COPY . /app

# Volume should be mounted 
VOLUME /etc/cron.d/cron

# Run the command on container startup
ENTRYPOINT ["/app/entrypoint.sh"]
