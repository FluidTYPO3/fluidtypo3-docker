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

/run-typo3.sh

echo "=> Activate Extensions ..."
echo "=> First flush caches to remove cache references to packages that may not be installed anymore"
php typo3cms cache:flush
if [ -f /app/typo3conf/PackageStates.php ]; then
    echo "=> Delete old package states as it must be rebuild for current composer.json config"
    rm /app/typo3conf/PackageStates.php
fi

php typo3cms extension:uninstall css_styled_content
php typo3cms extension:install vhs
php typo3cms extension:install flux
php typo3cms extension:install fluidcontent
php typo3cms extension:install fluidcontent_core
php typo3cms extension:install fluidpages
php typo3cms extension:install site

echo "=> Regenerate the package states ..."
php typo3cms install:generatepackagestates
echo "=> Flush caches again"
php typo3cms cache:flush

echo "=> Done! Ready to use!"

if [ -f /var/run/apache2/apache2.pid ]; then
    rm /var/run/apache2/apache2.pid
fi

tail -f /app/typo3temp/logs/typo3.log &

/run.sh
