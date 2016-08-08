function blink --description "blink1 utility" --wraps "blink1"
  if test (count $argv) -gt 0
    command blink1 $argv
  else
    command blink1 --glimmer
  end
end
