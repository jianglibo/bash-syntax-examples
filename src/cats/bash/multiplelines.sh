
### multiple lines string to a variable and interpolate the variables in the multiple lines
#using Ctrl-z to revert to previous contents.

# 1. use cat << EOF
# 2. use cat << "EOF"
# 3. use cat << 'EOF'

v1="line 3"
v=$(
	cat <<EOF
line 1
line 2
$v1
EOF
)
echo $v   # no newlines
echo "$v" #with newlines

v=$(
	cat <<"EOF"
line 1
line 2
$v1 $v1 will keep as it is.
EOF
)
echo "$v"

v=$(
	cat <<'EOF'
line 1
line 2
$v1 $v1 will keep as it is.
EOF
)
echo "$v"