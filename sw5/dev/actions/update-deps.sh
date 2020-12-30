#!/usr/bin/env bash
#DESCRIPTION: Updates all composer and npm dependencies.

ACTION: dev:composer-update

if [ -f package-lock.json ]; then
   if [ -d node_modules ]; then
   npm update;
   else
   npm install;
   fi
   fi
