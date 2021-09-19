echo "Enter the password:"
read password
len="${#password}"

if test $len -ge 8 ; then
    echo "$password" | grep -q [0-9]
     if test $? -eq 0 ; then
           echo "$password" | grep -q [A-Z]
                if test $? -eq 0 ; then
                    echo "$password" | grep -q [a-z]   
                      if test $? -eq 0 ; then
                       echo "Valid"
                   else
                       echo "Invalid"
                   fi
            else
               echo "Invalid" 
            fi
     else
       echo "Invalid"   
     fi
else
    echo "Invalid"
fi
