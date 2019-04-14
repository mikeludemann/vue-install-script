#!/bin/bash

echo "Checking vue"

if vue --version > /dev/null; then
  echo "vue is already installed."
else
  echo "installing vue"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing vue - global"
      npm install -g @vue/cli
      npm install -g @vue/cli-service-global
      echo "installing vue-generate-component - global"
      npm install -g vue-generate-component
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi