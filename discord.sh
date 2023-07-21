#!/bin/bash
TITLE=${1:-"Title"}
MESSAGE=${2:-"Message"}
COLOR=${3:-"999999"}
URL=${4:-'https://discord.com/api/webhooks/XXXXXXXXXXXXX/XXXXXXXXXXXXX'}
# API: https://discord.com/developers/docs/resources/channel#embed-object
curl "$URL" -H "Content-Type: application/json" -X POST -g --data '{"embeds":[{"title":"'"$TITLE"'","description":"'"$MESSAGE"'","color":"'"$((16#$COLOR))"'"}]}'
