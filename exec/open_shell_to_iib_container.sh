#!/bin/sh

if [ "$IIB_VERSION" = "" ]; then
	echo "env is not configured correctly!"
	exit 1
fi

containerName="$1"
if [ "$containerName" = "" ]; then
	containerName="ibmiibexampleapplication_IIB_1"
fi

docker exec --interactive --tty "$containerName" /bin/bash --rcfile "/opt/ibm/iib-$IIB_VERSION/server/bin/mqsiprofile"
