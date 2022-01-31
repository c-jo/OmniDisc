# OmniDisc

OmniDisc is a provides icon bar filers for filecore-based filing systems. It provides the icons on the icon bar you can click on to get to the discs.

OmniDisc also gives the user the ability to control the order the filing system icons appear on the iconbar, and a flexible way to set the icons used.

Control of OmniDisc is done with the following star-commands.

## OmniDisc_FS

This commands is used to manage the filing systems OmniDisc is providing icons for.

### \*OmniDisc_FS -add _\<FSName\>_ [-fdnames]

Adds the specified filing system to OmniDisc. If the -fdnames switch is used, it will attempt to read the names of 'floppy' discs (drives 0-3).

examples:  
`*OmniDisc_FS -add ADFS`  
`*OmniDisc_FS -add SDFS -fdnames`  

### \*OmniDisc_FS -remove _\<FSName\>_

Removes a filing system added with `*OmniDisc_FS -add`.

example:  
`*OmniDisc_FS -remove ADFS`  

### \*OmniDisc_FS -list

Prints a list of the filing systems registered with OmniDisc.

Icons will be created in the order the filing systems are registered in.

## OmniDisc_Icon

This command is used to manage the icons displayed for the drives.

### \*OmniDisc_Icon -add _\<sprite\>_ [-fs _\<fsname\>_] [-disc _\<discname\>_] [-drives _\<drives list\>_]

Sets the icon to use for the specified drives. The icon must exist in the wimp sprite pool.

The `-fs`, `-disc` and `-drives` are all optional, and if not specified the icon will be used for 'any' of the missing specifier. The drives list is a string of drives to apply the icon to. eg '45' would match drives 4 and 5, '0123' would match all the 'floppy' discs.

examples:  
`OmniDisc_Icon -add harddisc -fs ADFS` set the sprite for all ADFS drives.  
`OmniDisc_Icon -add floppy -fs SCSI -disc MyDisc` set the sprite MyDisc on SCSI.  
`OmniDisc_Icon -add harddisc -fs SCSI -drives 4` set the sprite drive 4 on SCSI.  
`OmniDisc_Icon -add sdcard -fs SDFS -disc MyCard -drives 0` set the sprite for a disc called MyCard on SDFS drive 0.  

When more than one icon can be used, the more specific one will be picked.

### \*OmniDisc_Icon -update _\<sprite\>_ [-fs _\<fsname\>_] [-disc _\<discname\>_] [-drives _\<drives list\>_]

Updates (ie. changes the sprite of) an icon added with `*OmniDisc_Icon -add`.

example:  
`OmniDisc_Icon -update scsidisc -fs SCSI -drives 4`

### \*OmniDisc_Icon -remove [-fs _\<fsname\>_] [-disc _\<discname\>_] [-drives _\<drives list\>_]

Removes an icon added wih `*OmniDisc_Icon -add`.

example:  
`OmniDisc_Icon -remove -fs ADFS`.

### \*OmniDisc_Icon -list

Shows a list of the current icons.
