read -p " Please enter the directory you want to Find count of files = " path

echo "Number of directories in $path =  "$(find $path/* -type d | wc -l)

echo "Number of Files in $path = "$(find $path/* -type f | wc -l)
