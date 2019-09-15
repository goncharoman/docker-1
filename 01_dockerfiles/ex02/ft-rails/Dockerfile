FROM ruby:latest

RUN		apt-get update && apt-get upgrade -y && \
		apt-get install -y sqlite3 nodejs

ONBUILD COPY	app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN		bundle install
ONBUILD RUN		rake db:migrate
ONBUILD EXPOSE	3000
