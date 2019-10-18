#/usr/bin/env python
import subprocess

cmd = ['lcp', '--proxyUrl', 'https://condocontrolcentral.com']
out = subprocess.Popen(cmd, cwd="./", stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
print(cmd, out)

cmd = ['lcp', '--proxyUrl', 'https://citymapper.com', '--port', '8011']
out = subprocess.Popen(cmd, cwd="./", stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
print(cmd, out)

cmd = ['lcp', '--proxyUrl', 'https://api.darksky.net', '--port', '8012']
out = subprocess.Popen(cmd, cwd="./", stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
print(cmd, out)

cmd = ['python3', '-m', 'http.server'] 
out = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
print(cmd, out)
