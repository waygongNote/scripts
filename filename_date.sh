# ex. myDate = 1231_2359_2014
myDate=$(echo $(date +%m%d_%H%M_%Y))
if [ $# -ge 1 ] && [ $(echo $0 | tail -c 17) == "filename_date.sh" ]; then
	cp -a $1 $(echo $1 | cut -d '.' -f 1)_$myDate.$(echo $1 | cut -d '.' -f 2)
	echo $(echo $1 | cut -d '.' -f 1)_$myDate.$(echo $1 | cut -d '.' -f 2)
fi




# (cut can be replaced by awk): ex. test=$(echo "123.456.789"|awk 'BEGIN {FS="."};{print $1}') => test = 123
