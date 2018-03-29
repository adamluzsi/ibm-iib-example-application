#!/bin/sh

if [ "$IIB_SRC_DIR_PATH" = "" ] || [ "$IIB_VERSION" = "" ]; then
	echo "env is not configured correctly!"
	exit 1
fi

source "$IIB_SRC_DIR_PATH/iib-$IIB_VERSION/server/bin/mqsiprofile"
