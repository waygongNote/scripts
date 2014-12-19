find ./ -name "*.c" -o -name "*.h" > cscope.files
cscope -Rbkq -i cscope.files
ctags -R --exclude=.svn
# (method 1) enter in every file, than run ":cscope add cscope.out"
# (method 2) use script in .vimrc (cf. http://easwy.com/blog/archives/advanced-vim-skills-cscope/)
