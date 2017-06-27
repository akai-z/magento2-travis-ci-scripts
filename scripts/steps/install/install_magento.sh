#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

ADMIN_USERNAME="admin"
ADMIN_FIRST_NAME="John"
ADMIN_LAST_NAME="Doe"
ADMIN_EMAIL="john.doe@example.com"
ADMIN_PASSWORD="1337.Automaton"
BACKEND_FRONTNAME="admin"
BASE_URL="http://magento.local/"
DB_HOST="127.0.0.1"
DB_USER="root"
SESSION_SAVE="files"
USE_REWRITES=1
USE_SECURE=0

php bin/magento setup:install \
    --admin-user $ADMIN_USERNAME \
    --admin-firstname $ADMIN_FIRST_NAME \
    --admin-lastname $ADMIN_LAST_NAME \
    --admin-email $ADMIN_EMAIL \
    --admin-password $ADMIN_PASSWORD \
    --backend-frontname $BACKEND_FRONTNAME \
    --base-url $BASE_URL \
    --db-host $DB_HOST \
    --db-name $DB \
    --db-user $DB_USER \
    --session-save $SESSION_SAVE \
    --use-rewrites $USE_REWRITES \
    --use-secure $USE_SECURE \
    -vvv
