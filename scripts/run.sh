#!/bin/bash

echo "=> Waiting for database ..."

for ((i=0;i<10;i++))
do
    DB_CONNECTABLE=$(mysql -u$DB_USER -p$DB_PASS -h$DB_HOST -P$DB_PORT -e 'status' >/dev/null 2>&1; echo "$?")
    if [[ DB_CONNECTABLE -eq 0 ]]; then
        break
    fi
    sleep 5
done
echo "Database connect succesfull! Wait 5 more seconds to ensure mysql is really up and running"
sleep 5

if [ -f /app/typo3conf/LocalConfiguration.php ]; then
    rm /app/typo3conf/LocalConfiguration.php
fi

/run-typo3.sh

echo "=> Regenerate the package states file ..."
php /app/typo3cms install:generatepackagestates

echo "=> Activate Extensions as needed ..."
php /app/typo3cms extension:uninstall css_styled_content
php /app/typo3cms extension:install builder
php /app/typo3cms extension:install vhs
php /app/typo3cms extension:install flux
php /app/typo3cms extension:install fluidcontent
php /app/typo3cms extension:install fluidcontent_core
php /app/typo3cms extension:install fluidpages
php /app/typo3cms extension:install site

echo "=> Keep calm and flush all caches"
php /app/typo3cms cache:flush

echo "=> Done! Ready to use!"

if [ -f /var/run/apache2/apache2.pid ]; then
    rm /var/run/apache2/apache2.pid
fi

if [ -f /app/typo3temp/logs/typo3.log ]; then
    tail -f /app/typo3temp/logs/typo3.log &
fi

/run.sh
