# ## bash script to display Time in word 

# print current time in original function format of Linux/Unix
echo "Current Time is : " `date +%r`
echo 

# getting hour, minut and seconds value in separate as integer
hour=`date +%-H`
minut=`date +%-M`
seconds=`date +%-S`
post='AM'

# create array of strings two show time in word 
time=(Zero One Two Three Four Five Six Seven Eight Nine 
        Ten Eleven Twelve Thirteen Fourteen Fifteen 
        Sixteen Seventeen Eighteen Nineteen)
        
time_ten=(Zero Ten Twenty Thirty Forty Fifty Sixty)


# check hour is greater than "12" or not
# if it than use 12-hour format to show the current time
if [[ $hour -gt 11 ]] 
then 
    let "hour -= 12"
    post="PM"
fi

# check if hour is 00 then print 12AM 
if [[ $hour -eq 0 ]] 
then 
    let "hour = 12"
fi


# Function for get current hour,minut and seconds in words
function getNumber(){
    
    # check condition when time is less than 20 and get value directly from array
    if [[ $1 -lt 20 ]] 
    then 
        timeInWord=${time[$1]}
    else
        # else block when time is greater than 20 ( minuts and seconds can be up to 59)
        f=`expr $1 / 10`
        s=`expr $1 % 10`
        
        # check condition when first part of the time is zero than we don't have to print that value
        if [[ $s -eq 0 ]] 
        then  
            timeInWord=${time_ten[$f]}
        else
            timeInWord="${time_ten[$f]}-${time[$s]}"
        fi
    fi
}

# make gloabal variable for timeInWord
timeInWord = "Geeks For Geeks"

# get hour in word
getNumber $hour
hourInWord=$timeInWord

# get minut in word
getNumber $minut
minutInWord=$timeInWord

# get seconds in word
getNumber $seconds
secondsInWord=$timeInWord


# print time in usual and simple word format in one line
echo "Time in Word is : $hourInWord hour $minutInWord minutes $secondsInWord second $post"

# END
