#!/usr/local/bin/fish

touch /tmp/ignore
set ignore (cat /tmp/ignore)
set day (date +"%a")
if test $day = "Sun" -o $day = "Sat" -o $ignore != 0
  exit 0
end
# wait for wifi
sleep 120
slack_presence "back"
slack_presence "" --set-status
