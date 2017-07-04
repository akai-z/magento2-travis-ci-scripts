#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

if [ -d $(pwd)/vendor/magento/marketplace-eqp ]; then
  ./vendor/squizlabs/php_codesniffer/scripts/phpcs --config-set installed_paths $(pwd)/vendor/magento/marketplace-eqp
  ./vendor/squizlabs/php_codesniffer/scripts/phpcs $MODULE_DEPLOY_PATH --standard=MEQP2
elif [ -f $(pwd)/dev/tests/static/testsuite/Magento/Test/Php/_files/phpcs/ruleset.xml ]; then
  ./vendor/squizlabs/php_codesniffer/scripts/phpcs $MODULE_DEPLOY_PATH --standard=$(pwd)/dev/tests/static/testsuite/Magento/Test/Php/_files/phpcs
elif [ -f $(pwd)/dev/tests/static/framework/Magento/ruleset.xml ]; then
  ./vendor/squizlabs/php_codesniffer/scripts/phpcs $MODULE_DEPLOY_PATH --standard=$(pwd)/dev/tests/static/framework/Magento
fi
