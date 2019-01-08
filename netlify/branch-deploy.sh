#!/bin/bash

BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# running unit test
yarn test

if [[ "$BRANCH" == "feature/"* ]]; then
    echo "feature branch"
elif [[ "$BRANCH" == "bugfix/"* ]]; then
    echo "bugfix branch"
elif [[ "$BRANCH" == "release/"* ]]; then
    echo "release branch"
fi

yarn build
