# Working with SVN

:house: [Home page](https://tinyurl.com/y68k2g97)

[see extension](#SVN-Extension)

To access SVN, click on the icon below.

![sss](images/svn-sidebar.png)

When a change is made to a source code file and saved via <kbd>Ctrl</kbd> + <kbd>S</kbd> a blue circle will appear with the number of files ready to be committed.

![sss](images/commitMarker.png)

Click on the icon and the following appears

![sss](images/svn-Commit1.png)

- Enter a commit message, press <kbd>Ctrl</kbd> + <kbd>Enter</kbd> a commit message (or click on the clock icon for prior commit messages)
- For additional options click <kbd>...</kbd> directly above the comment input

**Notes**
- Single click a file to see the diff.
- Right click a file for additional options
- Click on the bullet list to the right of a file name for more options

![sss](images/svn-bulletOptions.png)


# Sub version icon

![sss](images/SubVersionIcon.png)

Provides the following.

![sss](images/subVersionView.png)

By double clicking a file from the editor explorer


![sss](images/editorExplorerIcon.png)

Then selecting the sub version icon, double click a line under **FILE HISTORY** to do a comparision between current and an older version of the selected file.

Right click on a file for more options.

![sss](images/FileHistoryOptions.png)

# SVN-Extension

[Install from here](https://marketplace.visualstudio.com/items?itemName=johnstoncode.svn-scm)

![sss](images/subversion.png)

### Windows

If you use [TortoiseSVN](https://tortoisesvn.net/), make sure the option Command Line Tools is checked during installation and C:\Program Files\TortoiseSVN\bin is available in PATH.


### Commands

Press <kbd>F1</kbd> for command palette, type in <kbd>SVN</kbd>

![sss](images/svncommands.png)


Here are all of the extension settings with their default values. To change any of these, add the relevant Config key and value to your VSCode settings.json file. Alternatively search for the config key in the settings UI to change its value.

```
{
  // Whether auto refreshing is enabled
  "svn.autorefresh": true,

  // Select all files when commit changes
  "svn.commit.changes.selectedAll": true,

  // Check empty message before commit
  "svn.commit.checkEmptyMessage": true,

  // Set file to status resolved after fix conflicts
  "svn.conflicts.autoResolve": null,

  // Encoding of svn output if the output is not utf-8. When this parameter is null, the encoding is automatically detected. Example: 'windows-1252'.
  "svn.default.encoding": null,

  // The default location to checkout a svn repository.
  "svn.defaultCheckoutDirectory": null,

  // When a file is deleted, what SVN should do? `none` - Do nothing, `prompt` - Ask the action, `remove` - automatically remove from SVN
  "svn.delete.actionForDeletedFiles": "prompt"  // values: ["none","prompt","remove"],

  // Ignored files/rules for `svn.delete.actionForDeletedFiles`(Ex.: file.txt or **/*.txt)
  "svn.delete.ignoredRulesForDeletedFiles": [],

  // Controls whether to automatically detect svn externals.
  "svn.detectExternals": true,

  // Controls whether to automatically detect svn on ignored folders.
  "svn.detectIgnored": true,

  // Show diff changes using latest revision in the repository. Set false to use latest revision in local folder
  "svn.diff.withHead": true,

  // Whether svn is enabled
  "svn.enabled": true,

  // Try the experimental encoding detection
  "svn.experimental.detect_encoding": null,

  // Priority of encoding
  "svn.experimental.encoding_priority": [],

  // Url for the gravitar icon using the <AUTHOR>, <AUTHOR_MD5> and <SIZE> placeholders
  "svn.gravatar.icon_url": "https://www.gravatar.com/avatar/<AUTHOR_MD5>.jpg?s=<SIZE>&d=robohash",

  // Use garavatar icons in log viewers
  "svn.gravatars.enabled": true,

  // Ignores the warning when SVN is missing
  "svn.ignoreMissingSvnWarning": null,

  // List of SVN repositories to ignore.
  "svn.ignoreRepositories": null,

  // Ignores the warning when working copy is too old
  "svn.ignoreWorkingCopyIsTooOld": null,

  // Regex to detect path for 'branches' in SVN URL, 'null' to disable. Subpath use 'branches/[^/]+/([^/]+)(/.*)?' (Ex.: 'branches/...', 'versions/...')
  "svn.layout.branchesRegex": "branches/([^/]+)(/.*)?",

  // Regex group position for name of branch
  "svn.layout.branchesRegexName": 1,

  // Set true to show 'branches/<name>' and false to show only '<name>'
  "svn.layout.showFullName": true,

  // Regex group position for name of tag
  "svn.layout.tagRegexName": 1,

  // Regex to detect path for 'tags' in SVN URL, 'null' to disable. Subpath use 'tags/[^/]+/([^/]+)(/.*)?'. (Ex.: 'tags/...', 'stamps/...')
  "svn.layout.tagsRegex": "tags/([^/]+)(/.*)?",

  // Regex to detect path for 'trunk' in SVN URL, 'null' to disable. (Ex.: '(trunk)', '(main)')
  "svn.layout.trunkRegex": "(trunk)(/.*)?",

  // Regex group position for name of trunk
  "svn.layout.trunkRegexName": 1,

  // Number of commit messages to log
  "svn.log.length": 50,

  // Maximum depth to find subfolders using SVN
  "svn.multipleFolders.depth": 4,

  // Allow to find subfolders using SVN
  "svn.multipleFolders.enabled": null,

  // Folders to ignore using SVN
  "svn.multipleFolders.ignore": ["**/.git","**/.hg","**/vendor","**/node_modules"],

  // Path to the svn executable
  "svn.path": null,

  // Only show previous commits for a given user. Requires svn >= 1.8
  "svn.previousCommitsUser": null,

  // Refresh remote changes on refresh command
  "svn.refresh.remoteChanges": null,

  // Set the interval in seconds to check changed files on remote repository and show in statusbar. 0 to disable
  "svn.remoteChanges.checkFrequency": 300,

  // Show the output window when the extension starts
  "svn.showOutput": null,

  // Show the update message when update is run
  "svn.showUpdateMessage": true,

  // Set left click functionality on changes resource state
  "svn.sourceControl.changesLeftClick": "open diff"  // values: ["open","open diff"],

  // Combine the svn external in the main if is from the same server.
  "svn.sourceControl.combineExternalIfSameServer": null,

  // Allow to count unversioned files in status count
  "svn.sourceControl.countUnversioned": true,

  // Hide unversioned files in Source Control UI
  "svn.sourceControl.hideUnversioned": null,

  // Ignore unversioned files like .gitignore, Configuring this will overlook the default ignore rule
  "svn.sourceControl.ignore": [],

  // Changelists to ignore on commit
  "svn.sourceControl.ignoreOnCommit": ["ignore-on-commit"],

  // Changelists to ignore on status count
  "svn.sourceControl.ignoreOnStatusCount": ["ignore-on-commit"],

  // Set to ignore externals definitions on update (add --ignore-externals)
  "svn.update.ignoreExternals": true
}
```