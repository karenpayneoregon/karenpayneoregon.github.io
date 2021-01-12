# TortoiseSVN extension

:house: [Home page](https://tinyurl.com/y68k2g97)

![sss](images/TortoiseSVN.png)

[Extension](https://marketplace.visualstudio.com/items?itemName=fantasytyx.tortoise-svn)

# Features

tortoise-svn provides commands to open TortoiseSVN window for update, commit, log, revert, cleanup, add, diff, blame, lock and unlock.
tortoise-svn provides dropdown to select TortoiseSVN action.
Alternatively, you can select target file/directory first, then select the action.


# Requirements
It runs only on Windows and needs the TortoiseSVN and TortoiseSVN command line tools.

If TortoiseSVN is not installed at C:\\Program Files\\TortoiseSVN\\bin\\TortoiseProc.exe, please specify the correct path by setting property TortoiseSVN.tortoiseSVNProcExePath in user settings.json.

# Commands
**For the workspace rootPath**
- Workspace: SVN Update : open TortoiseSVN update window
- Workspace: SVN Commit : open TortoiseSVN commit window
- Workspace: SVN Log : open TortoiseSVN log window
- Workspace: SVN Revert : open TortoiseSVN revert window
- Workspace: SVN Cleanup : open TortoiseSVN cleanup window
- Workspace: SVN Add : open TortoiseSVN add window
- Workspace: SVN Diff : open TortoiseSVN diff window
- Workspace: SVN Lock : open TortoiseSVN lock window
- Workspace: SVN Unlock : open TortoiseSVN unlock window

**For the active file which open in text editor and has focus**
- File: SVN Update : open TortoiseSVN update window
- File: SVN Commit : open TortoiseSVN commit window
- File: SVN Log : open TortoiseSVN log window
- File: SVN Revert : open TortoiseSVN revert window
- File: SVN Cleanup : open TortoiseSVN cleanup window
- File: SVN Add : open TortoiseSVN add window
- File: SVN Blame : open TortoiseSVN Blame window
- File: SVN Diff : open TortoiseSVN diff window
- File: SVN Lock : open TortoiseSVN lock window
- File: SVN Unlock : open TortoiseSVN unlock window


# Keybindings
- <kbd>alt</kbd> + <kbd>S</kbd> <kbd>U</kbd> : "Workspace: SVN Update"
- <kbd>alt</kbd> + <kbd>S</kbd> <kbd>C</kbd> : "Workspace: SVN Commit"
- <kbd>alt</kbd> + <kbd>S</kbd> <kbd>L</kbd> : "Workspace: SVN Log"
- <kbd>alt</kbd> + <kbd>S</kbd> <kbd>R</kbd> : "Workspace: SVN Revert"
- <kbd>alt</kbd> + <kbd>S</kbd> <kbd>D</kbd> : "Workspace: SVN Diff"
- <kbd>alt</kbd> + <kbd>S</kbd> <kbd>M</kbd> : "SVN ... (Select Path)"

# Extension settings

This extension contributes the following settings:

- TortoiseSVN.autoCloseUpdateDialog : enable/disable auto close dialog when no errors, conflicts and merges.
- TortoiseSVN.tortoiseSVNProcExePath : specify the correct TortoiseProc.exe path. Need restar VSCode.
- TortoiseSVN.showPath.exclude : specify glob pattern to exclude files and folders. exclude will disable when specify a empty array.


# System registry

```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\TortoiseSVN]
"LanguageFolderPath"="C:\\Program Files\\TortoiseSVN\\Languages"
"ProcPath"="C:\\Program Files\\TortoiseSVN\\bin\\TortoiseProc.exe"
"CachePath"="C:\\Program Files\\TortoiseSVN\\bin\\TSVNCache.exe"
"TMergePath"="C:\\Program Files\\TortoiseSVN\\bin\\TortoiseMerge.exe"
"Directory"="C:\\Program Files\\TortoiseSVN\\"
```

# Tortoise-Windows-Explorer

