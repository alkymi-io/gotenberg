#!/bin/bash -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR/..

if [ $# -ne 1 ]; then
	echo "Usage: update_deployment.sh <new_tag>"
	exit 1
fi

cd deployment
bin/update_deployment.sh gotenberg $1