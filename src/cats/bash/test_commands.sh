# test command or application available.
# -v: command or application existance

if command -v git >/dev/null 2>&1; then
	echo "git command exist"
fi
