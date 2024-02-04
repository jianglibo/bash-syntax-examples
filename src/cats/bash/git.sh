### git and github

# get your person token from https://github.com/settings/personal-access-tokens/new
# permissions: content read, write (if you want to push)
git clone https://username:github_pat_11AA@https://github.com/jianglibo/syntax-examples.git

# fatal: Not possible to fast-forward, aborting.
# If you're unsure, it's a good practice to communicate with your team before using git pull --rebase, especially on branches that are shared with others.
git pull --rebase
git pull --no-ff
