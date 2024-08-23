#!/bin/zsh

cd "$CI_PRIMARY_REPOSITORY_PATH"

brew install openjdk@17

export PATH="/usr/local/opt/openjdk@17/bin:$PATH"

./gradlew :app-ios-shared:assembleSharedReleaseXCFramework -Papp.ios.shared.debug=true
