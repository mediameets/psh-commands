#!/usr/bin/env bash
#DESCRIPTION: Build routine for release into Shopware Community store.

ACTION: release:clean-up

ACTION: sw6:release:check
ACTION: sw6:release:zip
