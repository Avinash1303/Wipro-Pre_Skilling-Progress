echo "Enter folder name:"
read dir

if [ -d "$dir" ]
then
    for item in "$dir"/*
    do
        if [ -f "$item" ]
        then
            echo "$(basename "$item") Is a File"
        elif [ -d "$item" ]
        then
            echo "$(basename "$item") Is a Folder"
        fi
    done
else
    echo "Directory does not exist"
fi

