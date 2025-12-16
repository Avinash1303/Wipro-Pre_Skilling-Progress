echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Choose operation"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read choice

case $choice in
    1)
        result=$((a + b))
        echo "Addition = $result"
        ;;
    2)
        result=$((a - b))
        echo "Subtraction = $result"
        ;;
    3)
        result=$((a * b))
        echo "Multiplication = $result"
        ;;
    4)
        result=$((a / b))
        echo "Division = $result"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

