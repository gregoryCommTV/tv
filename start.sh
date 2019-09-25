#!/bin/bash
lcp --proxyUrl https://condocontrolcentral.com &

lcp --proxyUrl https://citymapper.com --port 8011 &

lcp --proxyUrl https://api.darksky.net --port 8012 &

python -m http.server 

