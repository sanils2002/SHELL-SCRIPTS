#change .sh files to .exe
for file in *.sh ; do mv $file `echo $file | sed 's/\(.*\.\)sh/\1exe/'` ; done
