#!/bin/bash

# Force start from root folder
cd "$(dirname "$0")/.."

set -e

package=$PACKAGE


if [[ -z "$package" ]]; then
  echo "Please enter the package you want to add to the project"
  read -r package
fi

yarn workspace cra add "$package"
yarn workspace next add "$package"
yarn workspace vite add "$package"
yarn workspace webpack4 add "$package"