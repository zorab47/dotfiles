function open --wraps xdg-open --description "Opens a file using the preferred app"
  switch (uname -s)
    case Darwin
      command open $argv
    case '*'
      xdg-open $argv
  end
end
