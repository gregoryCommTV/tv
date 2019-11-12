#!/bin/bash
kill $(ps aux | grep '[c]orsProxy' | awk '{print $2}')
nohup python3 corsProxy.py &

kill $(ps aux | grep '[h]ttp.server' | awk '{print $2}')
nohup python3 -m http.server &

open -a "Google Chrome" --new --args -kiosk http://127.0.0.1:8000
