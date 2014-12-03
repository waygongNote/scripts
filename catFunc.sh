#!/bin/bash
#rm -r $HOME/traceDir (if it was created by yourself before)
test -e $HOME/traceDir && echo "($HOME/traceDir exist)" && exit 0

originDir=`pwd`
echo "original directory = `pwd`" ###
cd $HOME
traceDir=traceDir
mkdir $traceDir
cd $traceDir #to avoid problems if the following dirctory doens't exist
echo "trace directory = `pwd`" ###
#(please type in the directory you focus, and than hide the below command)
#focusDir=......
echo "($HOME/focusDir doesn't exist)" && exit 0
test ! -e $focusDir && echo "($HOME/focusDir doesn't exist)" && exit 0
cd $focusDir
echo "focus directory = `pwd`" ###

#if [  ];then
rsync -a --include '*/' --include '*.c' --exclude '*' . $HOME/traceDir
cd $HOME/traceDir
function function_name ()
{
    #be care of the 80 length limit (waiting to modify, but it's correct to me now)
    test ! -d $filename && cat "$filename" | grep "^[a-z|A-Z]\|{\|}\|#\|goto\|case\|if(\|if\ (\|else\|while(\|while\ (\|for(\|for\ (\|do(\|do\ (\|[[:blank:]][[:blank:]]return[;\ ]\|^[[:blank:]]return[;\ ]\|\ \ break;\|^\ break;\|default:\|)$\|/\*\|\*/\|[[:blank:]][[:blank:]]\*\|^[[:blank:]]\*" > "$filename".temp.c
}
#for filename in $(ls -R| sed "s:^:`pwd`/:"|grep \.c$) => (it's not good enough, the below is better)
for filename in $(find $pwd | grep \.c$)
do
    function_name
done
for filename in $(find $pwd | grep \.c$ | grep -v \.temp\.c$)
do
    rm -f $filename
done
#fi
#un-hide below if you already installed ctags (apt-get install ctags) for vim plugin (taglist)
#ctags -R --exclude=.svn
