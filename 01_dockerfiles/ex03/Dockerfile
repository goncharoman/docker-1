FROM ubuntu:16.04

RUN	apt-get update && \
	apt-get install -y ca-certificates openssh-server curl postfix

RUN	curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash


RUN apt-get install -y gitlab-ce

# fix https://gitlab.com/gitlab-org/omnibus-gitlab/issues/2229
RUN	apt update && apt install -y tzdata && \
  	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


EXPOSE	22 80 443

ENTRYPOINT	(/opt/gitlab/embedded/bin/runsvdir-start&) && \
			EXTERNAL_URL="localhost" && gitlab-ctl reconfigure && \
			tail -f /dev/null
