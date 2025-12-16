echo "enter a numeber:"
read num
echo -num "Even: "
for (( i=num; i<num+10; i++))
do
	if [ $((i % 2 )) -eq 0 ]
	then
		echo -num "$i "
	fi
done

echo 
echo -num "odd: "
for (( i=num; i<num+10; i++))
do
	if [ $((i % 2)) -ne 0 ]
	then
		echo -num "$i "
	fi
done

echo
