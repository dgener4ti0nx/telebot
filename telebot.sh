#!/bin/bash
TOKEN=$(<token)
STDIN=$(cat)

MESSAGE=$STDIN
###################
diego=773945556
luiz=704337050
###################

if [ $1 == "diego" ]
	then CHATID=$diego
elif [ $1 == "luiz" ]
	then CHATID=$luiz
else
	echo "Sorry, receiver was not found."
exit 1
fi
echo "curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHATID"
curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHATID -d text="$MESSAGE" -d parse_mode="markdown" #> /dev/null

echo -e "Sent to $1: $MESSAGE"

