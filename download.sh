#/bin/bash
#name=file_
#IFS='-'
#INPUT="/root/scripts/file.txt"
#while read -r ip port
#do
#  rsync -avze "ssh -p '$port'" "$ip":/tmp/test  /tmp/"$ip"/
#done < "$INPUT"

INPUT="/root/scripts/file.txt"
while read -r user ip port
do
  rsync -avze "ssh -p '$port'" "$user"@"$ip":/tmp/test  /tmp/"$ip"/
done < "$INPUT"
