# FilerX

FilerX is a replacement for filecore-based ....Filer modules (ADFSFiler, SCSIFiler, SDFSFiler and others). These are the things thar provide the icons on the icon bar you can click on to get to the discs.

FilerX also gives the user the ability to control the order the filing system icons appear on the iconbar, and a flexible way to set the icons used.

Control of FilerX is done with the following star-commands.

FilerX_FS
---------
This commands is used to manage the filing systems FilerX is provifing icons for.

- *FilerX_FS -add <FSName> (-fdnames)

Adds the specified filing system to FilerX. If the -fdnames switch is used, it will attempt to read the names of 'floppy' discs (drives 0-3).

eg.
*FilerX_FS -add ADFS
*FilerX_FS -add SDFS -fdnames

-  *FilerX_FS-remove <FSName>

Removes a filing system added with *FilerX_AddFS.

eg. *FilerX_FS -remove ADFS

-  *FilerX_FS -list
Prints a list of the filing systems registered with FilerX.

FilerX_Icon
-----------
This command is used to manage the icons displayed for the drives.

- *FilerX_Icon -add <sprite> (-fs <fsname>) (-disc <discname>) (-drives <drives list>)

Sets the icon to use for the specified drives. The -fs, -disc and -drives are optional, and if not specified the icon will be used for 'any' of the missing specifier. So -fs ADFS will use the given sprite for all ADFS drives, -fs SCSI disc MyDisc will use it for MyDisc on SCSI. When pickig an icon, the one that matches most will be used, so if both the above examples were used, MyDisc would match the second, wheres OtherDisc would match the first (assuming both discs were on ADFS).

The drives list is a string of drives to apply the icon to. eg '45' would match drives 4 and 5, '0123' would match all the 'floppy' discs.


- *FilerX_Icon -remove <sprite> (-fs <fsname>) (-disc <discname>) (-drives <drives list>)

Removes an icon added wih *FilerX_Icon -add

- *FilerX_Icon -list

Shows a list of the current icons.


