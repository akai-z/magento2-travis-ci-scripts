#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

# If env var is present, configure support for 3rd party builds which include private dependencies.
# https://getcomposer.org/doc/articles/troubleshooting.md#api-rate-limit-and-oauth-tokens
test -n "${GITHUB_TOKEN}" && composer config -g github-oauth.github.com "${GITHUB_TOKEN}" || true
