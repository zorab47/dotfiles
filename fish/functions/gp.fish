function gp --description "git push" --wraps "git push"
  command git push $argv
end
