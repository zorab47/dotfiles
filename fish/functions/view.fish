function view --description "view in vim" --wraps "nvim"
  command nvim -R $argv
end
