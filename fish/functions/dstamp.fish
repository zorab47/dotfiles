function dstamp --description "Date stamp string and open in EDITOR"
  set date (date -I)
  set file "{$date}_{$argv}"
  e $file
end
