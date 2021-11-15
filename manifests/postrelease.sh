#!/bin/bash

set -e

if [ -z "$(git status --porcelain)" ]; then
  echo "Working directory clean"
else
  echo "Uncommitted changes, please stash or clean your local changes."
  exit 1
fi

VERSION="${1}"

echo "$VERSION"

cd ./manifests/overlays/production
kustomize edit set image "ghcr.io/podkrepi-bg/api=:$VERSION"
