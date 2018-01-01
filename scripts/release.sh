#!/bin/bash

# This script is used by Travis-CI to automatically release new versions of KGRadioButton.
# First, we check if the version specified in the .podspec does not already exist as a git tag.
# If the version does not exist yet, we add a git tag for this new version and publish to Cocoapods.

set -ev
cd ~/Documents
# GITHUB_TOKEN required for Travis to have permissions to push to the KGRadioButton repository
git clone https://Gypsyan:${GITHUB_TOKEN}@github.com/Gypsyan/KGRadioButton.git
cd KGRadioButton
git remote rm origin
git remote add origin https://Gypsyan:${GITHUB_TOKEN}@github.com/Gypsyan/KGRadioButton.git
version=$(grep -o 'version.*=.*[0-9]' KGRadioButton.podspec | cut -f 2 -d "'")
git fetch --tags
if [[ ! "$(git tag)" =~ "${version}" ]]; then
	echo "Publishing new version ${version} ";
	git tag $version;
	git push origin --tags;
	pod trunk push --allow-warnings;
fi