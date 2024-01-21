

### bash arguments process

# $0: script name
# $1: first argument
# argument number
echo $#
# all arguments
echo $@
# all arguments
echo $*
# what's the difference $@ and $*
# $@: each argument is a quoted string
# $*: all arguments are a single string

# get first value from $@, and explain the syntax
echo ${@:1:1} # ${array:offset:length}

# the following line is syntax error
var=$(eval "set -- $*"; echo $1) # eval is a command not a function

input_string="one 'two three' four five"
# Use eval to treat the input string as if it were command-line arguments
eval set -- $input_string

# Loop through the arguments and print them
for arg in "$@"; do
    echo "Argument: $arg"
done