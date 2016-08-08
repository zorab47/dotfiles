function bundler-installed -d "Help function: Check if bundler is installed"
    which bundle > /dev/null 2>&1
end

function within-bundled-project
  set -l  dir (/bin/pwd)
  while test "$dir" != "/"
    test -f "$dir/Gemfile"; and echo "Gemfile found in $dir" >&2; and return 0
    set -l dir (dirname $dir)
    #echo new will be $dir
  end
  # echo Gemfile not found
  return 1
end

function run-with-bundler
  if begin ; bundler-installed ; and within-bundled-project ; end
    echo "running: bundle exec $argv" >&2
    fish -c "bundle exec $argv"
  else
    eval command $argv
  end
end

function cucumber ; run-with-bundler cucumber $argv ; end
function rackup   ; run-with-bundler rackup $argv   ; end
function rake     ; run-with-bundler rake $argv     ; end
function rspec    ; run-with-bundler rspec $argv    ; end
function thin     ; run-with-bundler thin $argv     ; end
function guard    ; run-with-bundler guard $argv    ; end
