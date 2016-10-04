function pusher --description 'Push a notification via Pusher app'
	set title $USER@(hostname)

  curl -s -F "token=$PUSHER_TERMINAL_TOKEN" \
    -F "user=$PUSHER_USER_KEY" \
    -F "title=$title" \
    -F "message=$argv" https://api.pushover.net/1/messages.json > /dev/null &
end
