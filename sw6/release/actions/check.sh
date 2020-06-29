#!/usr/bin/env bash
#DESCRIPTION: Checks plugin for missing pieces.

if [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/src/main.js ] && [ ! -d src/Resources/public/administration ];
   then echo "ERROR: There need to be a src/Resources/public/administration folder
   with all compiled assets for the administration!";
   exit 1;
   fi

if [ -d __SW6_STOREFRONT_ASSET_FOLDER__/src ] && [ ! -d src/Resources/storefront/dist ];
   then echo "ERROR: There need to be a src/Resources/storefront/dist folder
   with the compiled JavaScript assets for the storefront!";
   exit 1;
   fi

if [ ! -f src/Resources/config/plugin.png ];
   then echo "INFO: plugin.png is missing at src/Resources/config";
   fi
