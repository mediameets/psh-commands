#!/usr/bin/env bash
#DESCRIPTION: Installs all composer and npm dependencies.

ACTION: dev:composer-install

if [ -f package.json ]; then
   if [ -f package-lock.json ]; then
   npm clean-install;
   else
   npm install;
   fi
   fi
