function sqlminus --description "Opens sqlminus for a specific app; detects app if no args are given"
  argparse 'clear' -- $argv

  if set --query _flag_clear
    rm "$TMPDIR/completion_sqlminus_apps.csv"
  end

  set -l replica ''

  if test (count $argv) -gt 0
    set replica (echo $argv)
  else
    set replica (git config --get remote.origin.url | string split -f2 '/' | sed -e 's/\.git//g')
  end

  if test (string length "$replica") -gt 0
    set -l REPLICA (string upper $replica | sed -e 's/-/_/g')
    echo "Opening replica $REPLICA"
    open "https://sqlminus.production.int.stitchfix.com/postgres_read_replicas/$REPLICA"
  else
    open "https://sqlminus.production.int.stitchfix.com/"
  end
end

function __fish_sqlminus_apps
  set -l apps_file "$TMPDIR/completion_sqlminus_apps.csv"

  if test ! -f $apps_file
    fixops -a sqlminus -e production ev ls \
    | grep --only-matching -E '\w+_REPLICA_DATABASE_URL' \
    | sed -e 's/_REPLICA_DATABASE_URL//' \
    | sed -e 's/_/-/g' \
    | string lower > $apps_file
  end

  cat $apps_file
end

complete -c sqlminus -a '(__fish_sqlminus_apps)'
