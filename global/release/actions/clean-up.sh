#!/usr/bin/env bash
#DESCRIPTION: Deletes all unwanted files like .DS_Store, Thumbs.db..

find ./ -name ".DS_Store"
   -o -name "Thumbs.db"
   -o -name "__MACOSX"
   -type f -delete
