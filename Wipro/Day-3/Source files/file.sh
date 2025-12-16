echo "Enter file or directory name:"
read name

if [ -e "$name" ]
then
    if [ -f "$name" ]
    then
        echo "It is a regular file"
    elif [ -d "$name" ]
    then
        echo "It is a directory"
    fi
else
    echo "File does not exist"
fi

