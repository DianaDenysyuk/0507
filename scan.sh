> cache.scan
ffile=( $(cat cache.scan) )

net="10.7.180."
for i in {109..115}
do 
	ip="$net$i"
	ping -c1 $ip &>>/dev/null && echo "$ip +" || echo "$ip -"
done >> cache.scan

sfile=( $(cat cache.scan) )

if [[ ffile != sfile ]]
then
	cat cache.scan
else
	echo "error"
fi
