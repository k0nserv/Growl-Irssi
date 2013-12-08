#!/bin/bash

(ssh $1 -o PermitLocalCommand=no\
     ": > .irssi/fnotify ; tail -f .irssi/fnotify " | \
   while read heading message; do                    \
     /usr/local/bin/growlnotify -t "${heading}" -m "${message}";     \
   done)