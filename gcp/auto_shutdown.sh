#!/bin/bash

IDLE=0
# Poweroff after 30 minutes of idle
IDLE_THRE=30

while [ 1 ]
do
    if [[ -z `who | grep -v tmux` ]]; then
        ((IDLE++))
    else
        IDLE=0
    fi
 
    if [[ $IDLE -ge $IDLE_THRE ]]; then
        poweroff
    fi
    sleep 60
done
