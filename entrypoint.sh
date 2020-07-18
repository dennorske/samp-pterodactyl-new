#!/bin/bash
sleep 3

cd /home/container
# export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
echo "Starting $(sampctl -V) on $(uname -a)"
echo "Will initialize project $(gitrepo) by $(gituser)"
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}
