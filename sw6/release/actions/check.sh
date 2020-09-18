#!/usr/bin/env bash
#DESCRIPTION: Checks plugin for missing pieces.

if [ ! __SW6_IS_APP__ ] && [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/src/main.js ] && [ ! -d src/Resources/public/administration ];
   then echo "ERROR: There need to be a src/Resources/public/administration folder
   with all compiled assets for the administration!";
   exit 1;
   fi

if [ -f __SW6_STOREFRONT_ASSET_FOLDER__/src/main.js ] && [ ! -d __SW6_STOREFRONT_ASSET_FOLDER__/dist/storefront/js ];
   then echo "ERROR: There need to be a __SW6_STOREFRONT_ASSET_FOLDER__/dist/storefront/js folder
   with the compiled JavaScript assets for the storefront!";
   exit 1;
   fi

if [ ! __SW6_IS_APP__ ] && [ ! -f src/Resources/config/plugin.png ];
   then echo "INFO: plugin.png is missing at src/Resources/config";
   exit 1;
   fi

if [ __SW6_IS_APP__ ] && [ ! -f manifest.xml ];
   then echo "ERROR: manifest.xml is missing";
   exit 1;
   fi
