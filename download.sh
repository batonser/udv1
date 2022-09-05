#/bin/bash
#name=file_
IFS='-'
INPUT="/root/scripts/file.txt"
while read -r ip port
do
  rsync -avze "ssh -p '$port'" "$ip":/tmp/test  /tmp/"$ip"/
done < "$INPUT"
