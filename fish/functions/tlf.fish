function tlf --description 'tail follow file (default log/development.log)'
	if test (count $argv) -gt 0
    command less -FRX --chop-long-lines +F $argv
  else
    command less -FRX --chop-long-lines +F log/development.log
  end
end
