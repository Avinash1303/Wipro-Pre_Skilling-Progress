echo "Enter a number:"
read n

echo "Even:"
for ((i=n; i<n+10; i++))
do
    if [ $((i % 2)) -eq 0 ]
    then
        echo "$i"
    fi
done

echo "Odd:"
for ((i=n; i<n+10; i++))
do
    if [ $((i % 2)) -ne 0 ]
    then
        echo "$i"
    fi
done

