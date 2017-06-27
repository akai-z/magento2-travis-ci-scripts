#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

if [ ${MAGENTO_VERSION:2:1} -eq 0 ]
then
  # Install an old release of PHPCPD that is compatible with Magento 2.0.
  composer require sebastian/phpcpd:^1.0
fi
