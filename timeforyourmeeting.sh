#!/bin/bash
#set -x

# trap and quit
trap ctrl_c INT

NEXT=""

function ctrl_c()
{
  echo -e "\n\nHappy meeting day!"
  exit 0
}

echo -e "\nLet's set some alerts.. ctrl+c to quit.\n"

while true; do
    echo -e "\nEnter your$NEXT meeting time:"    
    read meeting_time
    echo "spd-say -w 'time for your meeting'" | at $meeting_time > /dev/null 2>&1
    NEXT=" next"
done

exit 1
