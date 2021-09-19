  #Write a shell script to input from command line the names of 4 files. For each file, count the number of
  #lines that matches with the word “Codeflow” but, “Codeflow” cannot be a substring. Then compare the
  #count of each file and only display the file names containing minimum and maximum count.
  #(Note: Match the word “Codeflow” regardless of its case.)

  Count1=`grep -o  "\Codeflow\b" $1 | wc -l`
	Count2=`grep -o  "\Codeflow\b" $2 | wc -l`
	Count3=`grep -o  "\Codeflow\b" $3 | wc -l`
	Count4=`grep -o  "\Codeflow\b" $4 | wc -l`
    
    if [[ $Count1 -le $Count2 &&  $Count1 -le $Count3 &&  $Count1 -le $Count4 ]]
    then
        echo "Min $1"
    elif [[ $Count2 -le $Count1 &&  $Count2 -le $Count3 &&  $Count2 -le $Count4 ]]
    then
        echo "Min $2"
    elif [[ $Count3 -le $Count2 &&  $Count3 -le $Count1 &&  $Count3 -le $Count4 ]]
    then
        echo "Min $3"
    else 
        echo "Min $4"
    fi

    if [[ $Count1 -ge $Count2 &&  $Count1 -ge $Count3 &&  $Count1 -ge $Count4 ]]
    then
        echo "Max $1"
    elif [[ $Count2 -ge $Count1 &&  $Count2 -ge $Count3 &&  $Count2 -ge $Count4 ]]
    then
        echo "Max $2"
    elif [[ $Count3 -ge $Count2 &&  $Count3 -ge $Count1 &&  $Count3 -ge $Count4 ]]
    then
        echo "Max $3"
    else 
        echo "Max $4"
    fi
