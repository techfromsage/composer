#!/bin/bash

set -e

if [ -z "$COMPOSER_HOME" ]; then
    if [ -d "$HOME/.composer" ]; then
        COMPOSER_HOME="$HOME/.composer"
    elif [ -d "$HOME/.config/composer" ]; then
        COMPOSER_HOME="$HOME/.config/composer"
    fi
fi

docker run --rm \
    --workdir /build \
    --user "$(id -u):$(id -g)" \
    --volume "${PWD}:/build" \
    --volume "${COMPOSER_HOME}:/composer" \
    composer/satis:latest \
    build --ansi -vv satis.json dist

cp tfs-theme/favicon.ico dist/

echo "Done! Open dist/index.html to see the result"
