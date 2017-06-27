#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

composer install --no-interaction --prefer-dist

# Force upgrade PHPCS to version 2.X.
composer require squizlabs/php_codesniffer:^2.0
