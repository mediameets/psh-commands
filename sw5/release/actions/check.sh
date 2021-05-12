#!/usr/bin/env bash
#DESCRIPTION: Checks plugin for missing pieces.

if [ ! -f __PLUGIN_FOLDER_NAME__.php ] && [ ! -f Bootstrap.php ] ;
   then echo "ERROR: __PLUGIN_FOLDER_NAME__.php or Bootstrap.php must exist";
   exit 1;
   fi

if [ ! -f plugin.png ];
   then echo "INFO: plugin.png is missing";
   exit 1;
   fi

if [ ! -f plugin.xml ] && [ ! -f plugin.json ];
   then echo "ERROR: plugin.xml or plugin.json must exist";
   exit 1;
   fi
