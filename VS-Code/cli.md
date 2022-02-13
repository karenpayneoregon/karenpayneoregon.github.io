# Command Line Interface (CLI)

Visual Studio Code has a powerful command line interface built-in that lets you control how you launch the editor. You can open files, install extensions, change the display language, and output diagnostics through command-line options (switches).

## Starting from Total Commander

- Select the folder where a project resides
- From the menu, select *Command*
- Select *Run DOS*
- At the command prompt type **code <kbd>.</kbd>**
- VS Code opens and shows all files and sub directories in the editor.

## Opening Files and Folders

Sometimes you will want to open or create a file. If the specified file does not exist, VS Code will create them for you along with any new intermediate folders:

```
Application.cfc views\main\confirm.cfm controllers\main.cfc
```
For both files and folders, you can use absolute or relative paths. Relative paths are relative to the current directory of the command prompt where you run code.

If you specify more than one file at the command line, VS Code will open only a single instance.

## Opening VS Code with URLs

You can also open projects and files using the platform's URL handling mechanism. Use the following URL formats to:

<kbd>WindowKey</kbd> + <kbd>R</kbd> to open a folder e.g.

code \\**servername**\some_sub_folder\css\bootstrap4.2.1\

## Start with a new window

```
code --new-window
```

## What version is VS Code

```
code --version
```
