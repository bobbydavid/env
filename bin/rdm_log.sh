#!/bin/bash
# Logs an event for record-keeping.

LOGFILE="$HOME/EVENTS"

if [ -z $1 ]; then
  1="unspecified"
fi
echo -e "$(date)\t$@" >>"$LOGFILE"
