
### test file or directory existance.

#using Ctrl-z to revert to previous contents.

# -e: file existance
# -d: directory existance
# -f: file existance and is a regular file
# -L: file existance and is a symbolic link
# -r: file existance and is readable
# -w: file existance and is writable
# -x: file existance and is executable
# -s: file existance and is not empty
# -O: file existance and is owned by the current user
# -G: file existance and is owned by the current group
# -N: file existance and has been modified since it was last read
# -nt: file existance and is newer than another file
# -ot: file existance and is older than another file
# -ef: file existance and is a hard link to another file

# code example of -nt option
if [[ file1 -nt file2 ]]; then
	echo "file1 is newer than file2"
fi

if [[ -e 'a' ]]; then
	echo "file exist"
else
	echo "file not exist"
fi

# if need use sudo to test existance of a file
if sudo test -e 'a'; then
	echo "file exist"
else
	echo "file not exist"
fi

# if need use sudo to compare the newest of two files
if sudo test file1 -nt file2; then
	echo "file1 is newer than file2"
fi
