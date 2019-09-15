FROM debian:latest

EXPOSE 9091

RUN apt-get update && \
	apt-get install -y transmission-daemon
RUN mkdir -p /data/transmission-downloads/Complete && \
	mkdir -p /data/transmission-downloads/Incomplete

COPY settings.json /etc/transmission-daemon/settings.json

ENTRYPOINT service transmission-daemon start && \
			tail -f /dev/null

VOLUME [ "/data" ]

