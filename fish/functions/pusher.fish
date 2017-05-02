function pusher --description 'Push a notification via Pusher app'
  if test $USER = "charles"
    set title (hostname)
  else
    set title $USER@(hostname)
  end

  set cwd (basename (pwd))

  curl -s -F "token=$PUSHER_TERMINAL_TOKEN" \
    -F "user=$PUSHER_USER_KEY" \
    -F "title=$title: $cwd" \
    -F "message=$argv" https://api.pushover.net/1/messages.json > /dev/null &
end
