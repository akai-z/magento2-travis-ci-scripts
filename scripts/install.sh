#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

INSTALL_SCRIPTS_PATH="$(pwd)/${TRAVIS_SCRIPTS_PATH}/steps/install"

cd $MAGENTO_DIR

${INSTALL_SCRIPTS_PATH}/install_composer_packages.sh
${INSTALL_SCRIPTS_PATH}/magento2.0_compatibility.sh
${INSTALL_SCRIPTS_PATH}/install_magento_eqp.sh
${INSTALL_SCRIPTS_PATH}/install_magento.sh
