# Ubuntu Cheatsheet

**1. FilePermission**

```bash
ll something
```

- [FilePermission](https://help.ubuntu.com/community/FilePermissions)

**There are three types of access restrictions:**

> Permission - Action - chmod option

> read - view - r or 4

> write - edit - w or 2

> execute - execute - x or 1

**There are also three types of user restrictions:**

> owner -rwx------

> group ----rwx---

> other -------rwx

> **Note**: The restriction type scope is not inheritable: the file owner will be unaffected by restrictions set for his group or everybody else.


**Folder/Directory Permissions**

> read (view contents, i.e. ls command) r or 4

> write (create or remove files from dir) w or 2 --- **Caution**: write access for a directory allows deleting of files in the directory even if the user does not have write permissions for the file!)

> execute (cd into directory) x or 1

**2.Changing Permissions**

> Usage: chmod {options} filename

