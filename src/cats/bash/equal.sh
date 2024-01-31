

### test and compare string, number, equal and not equal
#using Ctrl-z to revert to previous contents.
# =: equal
# !=: not equal
# <: less than

if [[ 'a' = 'a' ]];then
	echo "a = a"
fi

if [[ 'a' != 'b' ]];then
	echo "a != b"
fi

if [[ 'a' < 'b' ]];then
	echo "a < b"
fi

if [[ -z '' ]];then
	echo "empty string"
fi

if [[ -n 'a' ]];then
	echo "not empty string"
fi

if [[ 1 -eq 1 ]];then
	echo "1 -eq 1"
fi

if [[ 1 -ne 2 ]];then
	echo "1 -ne 2"
fi