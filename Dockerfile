FROM dkdde/typo3:latest
MAINTAINER Claus Due

ADD composer.json /app/
ADD scripts/run.sh /run-fluidtypo3.sh
RUN rm /app/composer.lock
RUN composer self-update
RUN composer install --no-dev

ENV DB_HOST **LinkMe**
ENV DB_PORT **LinkMe**
ENV DB_NAME typo3
ENV DB_USER admin
ENV DB_PASS **ChangeMe**

CMD ["/run-fluidtypo3.sh"]
