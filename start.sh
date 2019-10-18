#!/bin/bash
lcp --proxyUrl https://condocontrolcentral.com &

lcp --proxyUrl https://citymapper.com --port 8011 &

lcp --proxyUrl https://api.darksky.net --port 8012 &

python -m http.server

../../Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -start-fullscreen http://127.0.0.1:8000