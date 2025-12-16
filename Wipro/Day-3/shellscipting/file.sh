echo  " Enter the name: "
read name
if [ -e "$name" ]
then
	if [ -f "$name" ]
	then
		echo " it is regular file"
	elif [ -d "$name" ]
	then
		echo "it is a directory"
	else
		echo " unknown "
	fi
else
	echo "no file"
fi
