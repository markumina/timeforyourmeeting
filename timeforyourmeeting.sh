#!/bin/bash
#set -x

# trap and quit
trap ctrl_c SIGINT

NEXT=""

function ctrl_c()
{
  echo -e "\n\nHappy meeting day!\n"
  exit 0
}

function eof_c()
{
  echo -e "\n\n** Deleting all meeting alerts! **\n\n"
  for i in `atq | awk '{print $1}'`; do atrm $i; done
  echo -e "... done, gbye!\n"
  exit 0
}

echo -e "\nLet's set some alerts [24hr clock].."
echo -e " -- ctrl+c to quit.\n -- ctrl+d to cancel all alerts.\n"

while true; do
    echo -e "\nEnter your$NEXT meeting time:"    

    read meeting_time
    
    # check for ctrl-D, read exit code '1'
    if [[ $? == 1 ]]; then 
      eof_c
    fi

    echo "spd-say -w 'time for your meeting'" | at $meeting_time > /dev/null 2>&1
    NEXT=" next"
done

exit 1
