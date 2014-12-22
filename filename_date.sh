
if [ $# == 1 ] && [ $(echo $0 | tail -c 17) == "filename_date.sh" ]; then
	echo $1
	cp -a $1 $(echo $1 | cut -d '.' -f 1)_`echo $(date +%m%d)_$(date +%R | head -c 2)$(date +%R | tail -c 3)_$(date +%Y)`.log
fi
