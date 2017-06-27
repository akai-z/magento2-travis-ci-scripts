#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

composer config repositories.marketplace_eqp vcs https://github.com/magento/marketplace-eqp
composer require magento/marketplace-eqp:^1.0
