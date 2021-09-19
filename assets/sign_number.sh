echo "Enter 10 numbers:"
declare -a a
for((i=0;i<10;i++))
do
  read a[$i]
done
for i in ${a[@]}
do
   if [ $i == 0 ]
   then
         ((c0=$c0 + 1))
   elif [ $i -le 0 ]
   then
         ((cn=$cn + 1))
   else
         ((cp=$cp + 1))            
   fi
done
echo "Positive numbers: $cp"        
echo "No. of zero's number: $c0"  
echo "Negative numbers: $cn" 


for((i=0;i<9;i++))
do
  for((j=i+1;j<10;j++))
  do
     if((a[i]>a[j]))
     then
     temp=${a[i]}
     a[$i]=${a[j]}
     a[$j]=$temp
     fi  
  done
done
echo "sorted order: "
for((i=0;i<10;i++))
do
  echo ${a[i]}
done
