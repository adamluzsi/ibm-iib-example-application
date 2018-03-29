#!/bin/sh

if [ "$IBM_IIB_SRC_DIR_PATH" = "" ] || [ "$IBM_IIB_VERSION" = "" ]; then
	echo "env is not configured correctly!"
	exit 1
fi

IBM_IIB_DOWNLOAD_URL="http://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/integration/$IBM_IIB_VERSION-IIB-LINUX64-DEVELOPER.tar.gz"
EXPECTED_ARCHIVE_DIR_PATH="$IBM_IIB_SRC_DIR_PATH/iib-$IBM_IIB_VERSION"

if [ ! -d "$IBM_IIB_SRC_DIR_PATH" ]; then
	echo "creating ibm iib main src directory"
	mkdir "$IBM_IIB_SRC_DIR_PATH"
fi

if [ ! -d "$EXPECTED_ARCHIVE_DIR_PATH" ]; then
	echo "creating directory $EXPECTED_ARCHIVE_DIR_PATH"

	echo "fetching source files"
	curl --progress-bar "$IBM_IIB_DOWNLOAD_URL" | tar --directory "$IBM_IIB_SRC_DIR_PATH" --extract --gunzip
fi
