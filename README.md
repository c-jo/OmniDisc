# OmniDisc

OmniDisc is a replacement for filecore-based ...Filer modules (ADFSFiler, SCSIFiler, SDFSFiler and others). It provides the icons on the icon bar you can click on to get to the discs.

OmniDisc also gives the user the ability to control the order the filing system icons appear on the iconbar, and a flexible way to set the icons used.

Control of OmniDisc is done with the following star-commands.

## OmniDisc_FS

This commands is used to manage the filing systems OmniDisc is providing icons for.

### \*OmniDisc_FS -add <FSName> (-fdnames)

Adds the specified filing system to OmniDisc. If the -fdnames switch is used, it will attempt to read the names of 'floppy' discs (drives 0-3).

examples:  
\*OmniDisc_FS -add ADFS  
\*OmniDisc_FS -add SDFS -fdnames  

### \*OmniDisc_FS-remove <FSName>

Removes a filing system added with *OmniDisc_AddFS.

example:  
\*OmniDisc_FS -remove ADFS  

### \*OmniDisc_FS -list

Prints a list of the filing systems registered with OmniDisc.

Icons will be created in the order the filing systems are registered in.

## OmniDisc_Icon

This command is used to manage the icons displayed for the drives.

### \*OmniDisc_Icon -add <sprite> (-fs <fsname>) (-disc <discname>) (-drives <drives list>)

Sets the icon to use for the specified drives. The icon must exist in the wimp sprite pool.

The -fs, -disc and -drives are all optional, and if not specified the icon will be used for 'any' of the missing specifier. The drives list is a string of drives to apply the icon to. eg '45' would match drives 4 and 5, '0123' would match all the 'floppy' discs.

examples:
... -fs ADFS will use the given sprite for all ADFS drives.  
... -fs SCSI -disc MyDisc will use it for MyDisc on SCSI.  
... -fs SCSI -drive 4 will use it for drive 4 on SCSI.  
... -fs SDFS -disc MyCard drive 0 will use it for a disc called MyCard on SDFS drive 0.  

When more than one icon can be used, the more specific one will be picked.


### \*OmniDisc_Icon -update <sprite> (-fs <fsname>) (-disc <discname>) (-drives <drives list>)

Updates an icon added with *OmniDisc_Icon add.

### \*OmniDisc_Icon -remove (-fs <fsname>) (-disc <discname>) (-drives <drives list>)

Removes an icon added wih *OmniDisc_Icon -add

### \*OmniDisc_Icon -list

Shows a list of the current icons.
