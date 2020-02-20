#!/usr/bin/env bash

[[ "$(command -v git)" ]] || sudo apt install -y git

# Create repo dir and clone config repo
repoDir="${HOME}/repos"
configRepoUrl="https://github.com/kultapanda/private_no_input.git"
[[ -d "${repoDir}" ]] || {
  mkdir -p "${repoDir}"
  cd "${repoDir}"
  git clone "${configRepoUrl}"
  }

echo "run relink, setup, and local conf scripts"
