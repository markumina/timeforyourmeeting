# Script timeforyourmeeting:

A ridiculously basic script that I wrote so I could silence all
notifications on my phone and PC - and concentrate on code.

I'll build this out someday, but I've been using it every day
for about a week now.

## What it does:
Allows you to set up voice alerts for your meetings on a linux PC,
nothing else.

## Tested on:
Ubuntu 20.04

## Requires:
`sudo apt install at`

## Example:

```
$ ./timeforyourmeeting.sh 

Let's set some alerts [24hr clock]..
 -- ctrl+c to quit.
 -- ctrl+d to cancel all alerts.


Enter your meeting time:
12:28

Enter your next meeting time:
14:28

Enter your next meeting time:
^C

Happy meeting day!

$ ./timeforyourmeeting.sh 

Let's set some alerts [24hr clock]..
 -- ctrl+c to quit.
 -- ctrl+d to cancel all alerts.


Enter your meeting time:


** Deleting all meeting alerts! **


... done, gbye!
```
