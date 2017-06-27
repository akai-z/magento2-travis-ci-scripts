#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

TRAVIS_SCRIPTS_FULL_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BEFORE_INSTALL_SCRIPTS_PATH="${TRAVIS_SCRIPTS_FULL_PATH}/steps/before_install"

${BEFORE_INSTALL_SCRIPTS_PATH}/disable_xdebug.sh
${BEFORE_INSTALL_SCRIPTS_PATH}/change_memory_limit.sh
${BEFORE_INSTALL_SCRIPTS_PATH}/github_token.sh
${BEFORE_INSTALL_SCRIPTS_PATH}/download_magento.sh
${BEFORE_INSTALL_SCRIPTS_PATH}/deploy_module.sh
${BEFORE_INSTALL_SCRIPTS_PATH}/create_db.sh
