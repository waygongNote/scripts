for filename in $(ls -d */)
do
	echo -n "["$filename"]"
#	for (( i=0; i<((30-$(echo $filename | wc -L))); i++ ))
#	do
#		echo -n "="
#	done
#	echo ""

#	printf %.s= {1..10}
#	printf %.s= {1..$((30-$(echo $filename | wc -L)))} => fail
	echo "=============================="
	cd $filename
	git st
	git l |head -2
#	git add .
#	git ci -m "a ci"
	cd ..
done
