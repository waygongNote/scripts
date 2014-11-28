#!/bin/bash
test -e ~/traceCodeDir && echo "~/test123 exist" && exit 0

mkdir ~/test123
#yourFocusDir=...(define by yourself)
cd $fucusCodeDir
rsync -a --include '*/' --include '*.c' --exclude '*' . ~/traceCodeDir
cd ~/traceCodeDir
function function_name ()
{
    test ! -d $filename && cat "$filename" | grep "^[a-z|A-Z]\|{\|}\|#\|goto\|case\|if(\|if\ (\|else\|while(\|while\ (\|for(\|for\ (\|do(\|do\ (\|\ \ return[;\ ]\|^\ return[;\ ]\|\ \ break;\|^\ break;\|default:\|)$" | grep -v -E "^\s+\*" > "$filename".temp.c
}
for filename in $(ls | sed "s:^:`pwd`/:")
do
	function_name
done

cd -
