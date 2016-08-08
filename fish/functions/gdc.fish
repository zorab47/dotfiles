function gdc --description "git diff --cached" --wraps "git diff"
  command git diff --cached $argv
end

