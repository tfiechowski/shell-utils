# Shell utilities

Shell utilities for everyday tasks


### .bash_profile

Custom shell profile that shows current working directory and git branch on the right. Command is entered after a newline, so there is always plenty space for text there. Looks following:

![Custom shell](images/shell_custom.png)


## Adding to path

To add this repository to PATH, run the following command. You need to add pwd to the export.

```
echo pwd
export PATH="<pwd>:$PATH"
```
