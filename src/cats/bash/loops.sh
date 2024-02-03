### bash loops for while

# while loop example
count=1
while [[ $count -le 5 ]]; do
	echo "while loop: $count"
	((count++))
done

# for loop example
for i in {1..5}; do
	echo "for loop: $i"
done

# other loop struct?
# until loop example
count=1
until [[ $count -gt 5 ]]; do
	echo "until loop: $count"
	((count++))
done

# break and continue
count=1
while [[ $count -le 5 ]]; do
	if [[ $count -eq 3 ]]; then
		((count++))
		continue
	fi
	if [[ $count -eq 5 ]]; then
		break
	fi
	echo "break and continue: $count"
	((count++))
done

# arrays example
# declare -a arr
arr[0]="first"
arr[1]="second"
arr[2]="third"

# loop over arrays
for i in "${arr[@]}"; do
	echo "array: $i"
done

