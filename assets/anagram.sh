$ cat bashtest
#! /bin/bash
x=abcdefg
eval letters=( $(echo $x | sed 's/./& /g') )
exec < candidates
while read candidate ; do
        temp=$candidate
        for((k=0; ${#letters[@]}>k; k++ )) ; do
                temp=${temp/${letters[k]}/}
                [[ -z $temp ]] && echo $candidate
        done
done
exit 0
$
$
$
$
$ cat candidates
abcdefg
axbcdef
cgfaebd
$
$
$
$
$ ./bashtest
abcdefg
cgfaebd
$
