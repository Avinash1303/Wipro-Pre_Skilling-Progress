declare -A user=(
	[name]="Avinash"
	[id]=1001
	[path]="/F:/Wipro/shellscipting"
	[shell]]="bash"
)

echo "Length: ${#user[@]}"
for key in ${!user[@]} ; do
	echo "$key --> ${user[$key]}"
done
