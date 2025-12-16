while true
do
    read -p "Enter number (0 to stop): " n
    [ "$n" -eq 0 ] && break

    if [ $((n%2)) -eq 0 ]
    then
        echo "Even"
    else
        echo "Odd"
    fi
done

