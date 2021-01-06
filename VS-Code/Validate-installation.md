# About

# About

To validate the VS Code installation.

- Press <kbd>Ctrl</kbd> + <kbd>,</kbd>
- Then when the setting window appears, type tort. Then validate there is a path for “Tortoise SVN: Tortoise SVNProc Exe Path” as shown in figure 1.
  - If you don’t see this then Tortoise is not installed, **STOP** here and notify me.
  - If you see the setting but does not show C:\Program Files\TortoiseSVN\bin\Tortoise.exe, **STOP** here and notify me.
  - If you do see C:\Program Files\TortoiseSVN\bin\Tortoise.exe **this is right**.

Next up, make sure these are installed.
- https://marketplace.visualstudio.com/items?itemName=ilich8086.ColdFusion
- https://marketplace.visualstudio.com/items?itemName=liximomo.remotefs
- https://marketplace.visualstudio.com/items?itemName=liximomo.sftp
- https://marketplace.visualstudio.com/items?itemName=johnstoncode.svn-scm
- https://marketplace.visualstudio.com/items?itemName=fantasytyx.tortoise-svn (this one is from above steps)

How to know what extensions are installed as per above.

- Open VS Code
- At the bottom of the screen set focus to the Terminal window and paste in the following
  - code --list-extensions | % { "code --install-extension $_" } >InstalledExtensions.txt
  - This will write installed extensions to a file in the current folder remove >InstalledExtensions.txt to see the list in the terminate window



![sss](images/figure1.png)
