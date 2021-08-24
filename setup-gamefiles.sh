#!/usr/bin/env bash

GAMEFILES_ZIP="iw4x_files.zip"
GAMEFILES_URL="https://dss0.cc/updater/$GAMEFILES_ZIP"
GAMEFILES_DIRECTORY=./data/client
MODS_DIRECTORY=./data/mods

function create_directories() {
  echo "Creating directories"
  mkdir -p $GAMEFILES_DIRECTORY
  mkdir -p $MODS_DIRECTORY
}

function setup_gamefiles () {
  echo "Preparing gamefiles..."
  # download gamefiles
  wget $GAMEFILES_URL
  # move and extract gamefiles
  mv  $GAMEFILES_ZIP $GAMEFILES_DIRECTORY
  unzip $GAMEFILES_DIRECTORY/$GAMEFILES_ZIP
}

function main () {
  create_directories
  setup_gamefiles
  if [ $? -eq 0 ]; then
    echo "Setup succeeded!"
  else
    echo "Setup failed!"
  fi
}

main
