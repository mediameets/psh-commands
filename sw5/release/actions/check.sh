#!/usr/bin/env bash
#DESCRIPTION: Checks plugin for missing pieces.

if [ ! -f __PLUGIN_FOLDER_NAME__.php ];
   then echo "ERROR: __PLUGIN_FOLDER_NAME__.php is missing";
   exit 1;
   fi

if [ ! -f plugin.png ];
   then echo "INFO: plugin.png is missing";
   exit 1;
   fi

if [ ! -f plugin.xml ];
   then echo "ERROR: plugin.xml is missing";
   exit 1;
   fi
