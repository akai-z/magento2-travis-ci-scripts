#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

phpenv config-add $(pwd)/${TRAVIS_SCRIPTS_DIR}/ini/travis.memory_limit.ini
