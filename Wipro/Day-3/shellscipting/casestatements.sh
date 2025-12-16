echo "Enter first number:"
read a
echo "enter second number:"
read b

echo "choose operations"
echo "1. Add"
echo "2. Sub"
echo "3. Mul"
echo "4. Div"

read choices

case $choices in
	1)
		result=$((a + b))
		echo "Add = $result"
		;;
	2)
		result=$((a - b))
		echo "sub = $result"
		;;
	3)
		result=$((a * b))
		echo "sub = $result"
		;;
	4)
		result=$((a / b))
		echo "sub = $result"
		;;
esac

