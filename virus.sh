# DO NOT RUN THIS SCRIPT
echo "DO NOT RUN THIS SCRIPT. Exiting."
exit;

# Basic Outline:
# Find all bash files on the computer (All volumes)
# Append the content of this script to the bash files
# Whenever the bash file is run, our code is also run

# Note: The implementation is not exactly as described by
# the read me. Read along the comments and the psuedo-code

# // Implementation psuedo-code
#
# $filesList = []
# for $volume in '/volumes':
#   if '$volume/.MagicMarker' exists:
#       $filesList.append(files newer than '$volume/.MagicMarker'  && end in '.sh')
#   else: 
#       $filesList.append(files that end in '.sh')
#   touch '$volume/.MagicMarker'
#   
#   // The .MagicMarker file is so that we don't append our script twice
#   // Not much damage if we accidentally did. Not for us, anyway.
# 
#   for $file in $filesList:
#      cat thisScript >> $file
#   $filesList = [] // resetting the list for the next volume
#
# cronJob.add(bash.run(thisScript), EveryHour)
#
#
#
# // <Insert the maclicious code here.>
# // It will be copied to all scripts with the above code

# https://askubuntu.com/questions/89393/how-to-search-entire-hard-drive-for-a-file
# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
# https://stackoverflow.com/questions/8985989/is-there-any-way-to-find-out-changed-file-after-some-date-in-whole-project-code


