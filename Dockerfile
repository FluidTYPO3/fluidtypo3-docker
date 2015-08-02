FROM dkdde/typo3:latest
MAINTAINER Claus Due

ADD composer.json /app/
ADD scripts/run.sh /scripts/run.sh
RUN rm /app/composer.lock
RUN composer self-update
RUN composer install --no-dev
