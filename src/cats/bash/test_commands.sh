
### test command or application installed.
#using Ctrl-z to revert to previous contents.

# -v: command or application existance
# using command is better than using which.

if command -v git >/dev/null 2>&1; then
	echo "git command exist"
fi

# test a systemd service is installed.
if systemctl list-unit-files | grep -q 'sshd.service'; then
	echo "sshd.service exist"
fi

# test a systemd service is running.
if systemctl status sshd.service | grep -q 'Active: active'; then
	echo "sshd.service is running"
fi

