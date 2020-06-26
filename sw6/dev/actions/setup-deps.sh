#!/usr/bin/env bash
#DESCRIPTION: Installs all composer and npm dependencies (for storefront & administration packages).

ACTION: dev:composer-install

if [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/package.json ]; then
   if [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/package-lock.json ]; then
   npm clean-install --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__;
   else
   npm install --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__;
   fi
   fi

if [ -f __SW6_STOREFRONT_ASSET_FOLDER__/package.json ]; then
   if [ -f __SW6_STOREFRONT_ASSET_FOLDER__/package-lock.json ]; then
   npm clean-install --prefix __SW6_STOREFRONT_ASSET_FOLDER__;
   else
   npm install --prefix __SW6_STOREFRONT_ASSET_FOLDER__;
   fi
   fi
