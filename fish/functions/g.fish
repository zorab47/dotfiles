function g --description "Git" --wraps git
  if test (count $argv) -gt 0
    command git $argv
  else
    command git status -s
  end
end
