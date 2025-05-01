function open_prs --description "open GitHub PRs view" --wraps "open"
  for repo in $argv
    open "https://github.com/stitchfix/$repo/pulls"
  end
end
