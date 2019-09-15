FROM debian:latest

ENV TS3SERVER_LICENSE=accept

WORKDIR /home/teamspeak
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
	wget https://files.teamspeak-services.com/releases/server/3.9.1/teamspeak3-server_linux_amd64-3.9.1.tar.bz2 && \
    tar xjf teamspeak3-server_linux_amd64-3.9.1.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

EXPOSE 9987/udp 10011/tcp 30033/tcp
ENTRYPOINT ./ts3server_minimal_runscript.sh
