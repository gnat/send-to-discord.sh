# Why does this exist?
Send messages to discord (.. no more Docker containers.. no more npm install.. no more bullshit..)

## Shell script (discord.sh)
```bash
TITLE=${1:-"Title"}
MESSAGE=${2:-"Message"}
COLOR=${3:-"999999"}
URL=${4:-'https://discord.com/api/webhooks/XXXXXXXXXXXXX/XXXXXXXXXXXXX'}
# API: https://discord.com/developers/docs/resources/channel#embed-object
curl "$URL" -H "Content-Type: application/json" -X POST -g --data '{"embeds":[{"title":"'"$TITLE"'","description":"'"$MESSAGE"'","color":"'"$((16#$COLOR))"'"}]}'
```
▶️ `./discord.sh "Deploying" "$GIT_SHA" "009900"`

## ... or as a function in your own script.
```bash
discord_message() {
	TITLE=${1:-"Title"}
	MESSAGE=${2:-"Message"}
	COLOR=${3:-"999999"}
	URL=${4:-'https://discord.com/api/webhooks/XXXXXXXXXXXXX/XXXXXXXXXXXXX'}
	# API: https://discord.com/developers/docs/resources/channel#embed-object
	curl "$URL" -H "Content-Type: application/json" -X POST -g --data '{"embeds":[{"title":"'"$TITLE"'","description":"'"$MESSAGE"'","color":"'"$((16#$COLOR))"'"}]}'
}

discord_message "Deploying" "$GIT_SHA" "009900"
```

## Wisdom from levelsio
![image](https://github.com/gnat/send-to-discord/assets/24665/8d30f48a-71f2-4d66-8bb9-586705e01d2e)
### Thanks for coming to my TED talk.
