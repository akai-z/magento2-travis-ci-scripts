#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

./vendor/sebastian/phpcpd/composer/bin/phpcpd $MODULE_DEPLOY_PATH
