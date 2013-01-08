#!/bin/bash

RDM_LOG="$HOME/bin/rdm_log.sh"

if [ ! -x "$RDM_LOG" ]; then
  echo "$0: $RDM_LOG does not exist or is not executable. Cannot log.">&2
  exit 1
fi

# Begin by logging in:
"$RDM_LOG" LOGIN $TERM

# Handle signals by logging:
trap "$RDM_LOG 'LOGOUT $TERM'; exit" SIGHUP
trap "$RDM_LOG 'SIGINT'; exit 1" SIGINT
trap "$RDM_LOG 'SIGTERM'; exit 1" SIGTERM

# rdm: if there is no display, then sleep until a signal arrives.
[ -z "$DISPLAY" ] && sleep 100000d

# rdm: otherwise, monitor gnome for screen locking. Log these events.
dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" | \
  (
    while true; do
      read X;
      if echo $X | grep "boolean true" &> /dev/null; then
        "$RDM_LOG" "SCREEN_LOCKED"
      elif echo $X | grep "boolean false" &> /dev/null; then
        "$RDM_LOG" "SCREEN_UNLOCKED"
      fi
    done
  )

echo "How did I get to here?!?"
