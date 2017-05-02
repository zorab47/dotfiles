function notify
  pusher $argv

  set cwd (basename (pwd))
  notify-send $cwd "$argv"
end
