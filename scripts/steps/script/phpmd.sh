#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

if [ -f $(pwd)/dev/tests/static/testsuite/Magento/Test/Php/_files/phpmd/ruleset.xml ]; then
  ./vendor/phpmd/phpmd/src/bin/phpmd $MODULE_DEPLOY_PATH text $(pwd)/dev/tests/static/testsuite/Magento/Test/Php/_files/phpmd/ruleset.xml
else
  ./vendor/phpmd/phpmd/src/bin/phpmd $MODULE_DEPLOY_PATH text cleancode, codesize, controversial, design, naming, unusedcode
fi
