
#!/bin/bash

FILE=/path/for/access.log;

 cat $FILE | awk '{split($6,a,"\""); print $1" "a[2]}' | sort -n | uniq -c | sort -nr | head -10
