echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Enter expression (+ - * / %):"
read op

case $op in
    +) echo "Result = $((a+b))" ;;
    -) echo "Result = $((a-b))" ;;
    \*) echo "Result = $((a*b))" ;;
    /) echo "Result = $((a/b))" ;;
    %) echo "Result = $((a%b))" ;;
    *) echo "Invalid operator" ;;
esac

