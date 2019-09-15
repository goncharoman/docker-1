FROM nginx:latest

RUN adduser --no-create-home --shell /bin/false --disabled-password \
	--gecos '' www
WORKDIR /etc/nginx
RUN mv conf.d/default.conf conf.d/default.conf.disabled
COPY nginx.conf nginx.conf
COPY test.local.conf conf.d/test.local.conf
COPY opt opt

# ON PRODUCTION SERVER
# получение сертификат letsencrypt
# изменить домен и email (должна быть запись типа A)
# раскоментить конфиги
#
# RUN apt-get update && \
	# apt-get intall openssl certbot
# RUN openssl dhparam -out /etc/nginx/dhparam.pem 2048
# RUN mkdir -p /var/www/_letsencrypt && \
# 	chown www /var/www/_letsencrypt
# RUN certbot certonly --webroot -d test.local --email info@test.local \
# 	-w /var/www/_letsencrypt -n --agree-tos --force-renewal
#
# автообновление сертификата certbor (если срок действия истекает менее чем через 30 суток)
# RUN echo -e '#!/bin/bash\nnginx -t && systemctl reload nginx' | \
# 	tee /etc/letsencrypt/renewal-hooks/post/nginx-reload.sh
# RUN chmod a+x /etc/letsencrypt/renewal-hooks/post/nginx-reload.sh

# TEST
# RUN mkdir -p /var/www/test.local && \
# 	echo "<h1>HELLO WORLD</h1>" > /var/www/test.local/index.html
# RUN chown -R www:www /var/www/test.local

CMD service nginx start && \
			tail -f /var/log/nginx/error.log
