# login=( $(cat /etc/passwd) )

while read
do
 a=1
 let "a += $RANDOM % 12"
 login=$(echo "$REPLY" | cut -d: -f1)
 echo -e "$login\t\t$a"
done < /etc/passwd
