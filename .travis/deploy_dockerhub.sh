#!/bin/sh

docker login -u "$DOCKER_USER" -p "$DOCKER_PASS"

if [ "$TRAVIS_BRANCH" = 'master' ]; then
    TAG='latest'
else
    TAG="$TRAVIS_BRANCH"
fi

IMAGE="$TRAVIS_REPO_SLUG:$TAG"

docker build -f Dockerfile -t "$IMAGE" .
docker push "$IMAGE"
