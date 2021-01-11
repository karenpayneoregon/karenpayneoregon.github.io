# Command line

VS Code has a powerful command line interface (CLI) which allows you to customize how the editor is launched to support various scenarios.

# open code with current directory
code <kbd>.</kbd>

# open the current directory in the most recently used code window
code -r <kbd>.</kbd>

# create a new window
code -n

# change the language
code --locale=es

# open diff editor
code --diff <file1> <file2>

# open file at specific line and column <file:line[:character]>
code --goto package.json:10:5

# see help options
code --help

# disable all extensions
code --disable-extensions <kbd>.</kbd>
