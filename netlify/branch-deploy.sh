#!/bin/bash

echo "====================================="
echo "STEP 0: setting up"
echo "====================================="
BRANCH="cat ./netlify/.git.branch"
echo $BRANCH


echo "====================================="
echo "STEP 1: running unit test"
echo "====================================="
yarn test

echo "====================================="
echo "STEP 2: running $BRANCH specific tasks"
echo "====================================="
if [[ "$BRANCH" == "feature/"* ]]; then
    echo "feature branch"
elif [[ "$BRANCH" == "bugfix/"* ]]; then
    echo "bugfix branch"
elif [[ "$BRANCH" == "release/"* ]]; then
    echo "release branch"
fi

echo "====================================="
echo "STEP 3: running build"
echo "====================================="
yarn build
