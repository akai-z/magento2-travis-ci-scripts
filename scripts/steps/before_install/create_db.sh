#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

mysql -uroot -e '
    SET @@global.sql_mode = NO_ENGINE_SUBSTITUTION;
    CREATE DATABASE '${DB}';
'
