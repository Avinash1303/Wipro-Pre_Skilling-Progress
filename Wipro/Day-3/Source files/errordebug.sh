DEBUG=true
DIR=TestDir

if [ -d "$DIR" ]
then
    echo "Directory already exists"
    exit 1
fi

mkdir "$DIR" || { echo "Permission denied"; exit 1; }

$DEBUG && echo "Debug: Directory created successfully"

