#!/usr/bin/env bash
#DESCRIPTION: Updates all composer and npm dependencies (for storefront & administration packages).

ACTION: dev:composer-update

if [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/package-lock.json ]; then
   if [ -d __SW6_ADMINISTRATION_ASSET_FOLDER__/node_modules ]; then
   npm update --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__;
   else
   npm install --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__;
   fi
   fi

if [ -f __SW6_STOREFRONT_ASSET_FOLDER__/package-lock.json ]; then
   if [ -d __SW6_STOREFRONT_ASSET_FOLDER__/node_modules ]; then
   npm update --prefix __SW6_STOREFRONT_ASSET_FOLDER__;
   else
   npm install --prefix __SW6_STOREFRONT_ASSET_FOLDER__;
   fi
   fi
