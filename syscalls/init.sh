while true; do
  clear
  lli read.ll
  inotifywait -e modify read.ll
done
