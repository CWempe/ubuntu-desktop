#!/bin/bash

BINARY="tilix"
export DEBIAN_FRONTEND="noninteractive"

BINARYLOC=`which ${BINARY}`
if [ "$?" -ne "0" ]; then
  set -e
#  xmessage "Installing Tilix ..." &
#  gxmessage "Installing Tilix ..." &

  xterm -T AptGetUpdate -g 100x30 -e apt-get update
  xterm -T AptGetInstall -g 100x30 -e apt-get install -y ${BINARY}
fi

${BINARY} -e "bash -l"
