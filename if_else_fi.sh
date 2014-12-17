
if [ $# == 1 ] && [ $(echo $0 | tail -c 14) == "if_else_fi.sh" ]; then
    echo "$@"
	echo "$(echo $0 | tail -c 14)"
fi

