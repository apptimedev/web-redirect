FROM nginx:1.15-alpine

COPY run.sh /usr/local/bin/

RUN apk add --update bash \
	&& rm -rf /var/cache/apk/* \
	&& chmod +x /usr/local/bin/run.sh

EXPOSE 8080

CMD ["run.sh"]
