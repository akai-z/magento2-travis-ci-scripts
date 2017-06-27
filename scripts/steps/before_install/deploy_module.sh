#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

mkdir -p ${MAGENTO_DIR}/${MODULE_DEPLOY_PATH}
ln -s ${TRAVIS_BUILD_DIR}/* ${MAGENTO_DIR}/${MODULE_DEPLOY_PATH}
