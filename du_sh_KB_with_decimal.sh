# there's some problem when using du -sb (?) != du -s/1024
size=$(du -s|awk '{print $1}')
echo -n $size" ("
if [ $size -ge $((1024*1024)) ]; then
	printf $(echo "scale=3;$size/1024/1024" |bc)
	echo -n G
elif [ $size -ge $((1024)) ]; then
	printf $(echo "scale=3;$size/1024" |bc)
	echo -n M
else
	echo -n $size
	echo -n K
fi
echo ")"
