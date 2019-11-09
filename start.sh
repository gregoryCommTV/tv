#!/bin/bash
kill $(ps aux | grep '[c]ondocontrol' | awk '{print $2}')
nohup lcp --proxyUrl https://condocontrolcentral.com &

kill $(ps aux | grep '[c]itymapper' | awk '{print $2}')
nohup lcp --proxyUrl https://citymapper.com --port 8011 &

kill $(ps aux | grep '[d]arksky' | awk '{print $2}')
nohup lcp --proxyUrl https://api.darksky.net --port 8012 &

kill $(ps aux | grep '[h]ttp.server' | awk '{print $2}')
nohup python3 -m http.server &

open -a "Google Chrome" --new --args -kiosk http://127.0.0.1:8000
