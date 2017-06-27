#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

git clone https://github.com/magento/magento2.git --branch $MAGENTO_VERSION --depth 1 $MAGENTO_DIR
