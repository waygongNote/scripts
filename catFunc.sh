#!/bin/bash
#rm -r ~/traceDir (if it was created by yourself before)
test -e ~/traceDir && echo "~/traceDir exist" && exit 0

mkdir ~/traceDir
#for safe (avoid that you are in /root/, and then ...)
cd ~/traceDir
#focusDir=...(define by yourself)
cd $fucusDir
rsync -a --include '*/' --include '*.c' --exclude '*' . ~/traceDir
cd ~/traceDir
function function_name ()
{
	#be care of the 80 length limit (waitng to modify)
    test ! -d $filename && cat "$filename" | grep "^[a-z|A-Z]\|{\|}\|#\|goto\|case\|if(\|if\ (\|else\|while(\|while\ (\|for(\|for\ (\|do(\|do\ (\|\ \ return[;\ ]\|^\ return[;\ ]\|\ \ break;\|^\ break;\|default:\|)$" | grep -v -E "^\s+\*" > "$filename".temp.c
}
for filename in $(ls | sed "s:^:`pwd`/:")
do
	function_name
done

cd -
