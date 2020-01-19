FROM debian:latest

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install ruby && \
    gem install --no-rdoc --no-ri github_events_export

VOLUME /data

WORKDIR /data

ENV TOKEN use_cli

ENTRYPOINT /usr/local/bin/github-events-export --token="$TOKEN"
