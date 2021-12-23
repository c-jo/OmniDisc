# Makefile for TaskRunner

COMPONENT   = FilerX
OBJS        = FilerX \
			  Main \
			  Enter \
			  FindDrives \
			  Icon
CMHGDEPENDS = FilerX
CUSTOMRES   = no

include CModule

#CMHG = SDFS::Chipmunk.$.Work.TaskRunner.CMunge
#CMHGFLAGS = -32bit

# Dynamic dependencies:
h.FilerXHdr:	cmhg.FilerXHdr
o.Enter: s.Enter
o.Enter: Hdr:ListOpts
o.Enter: Hdr:Macros
o.Enter: Hdr:System
o.Enter: Hdr:SWIs
o.Enter: Hdr:CPU.Arch
o.Enter: Hdr:Machine.<Machine>
o.Enter: Hdr:Machine.Machine
o.Enter: Hdr:CPU.Generic26
o.Enter: Hdr:CPU.Generic32
o.Enter: Hdr:IO.GenericIO
o.Enter: Hdr:RISCOS
o.FindDrives:	c.FindDrives
o.FindDrives:	C:h.swis
o.FindDrives:	C:h.kernel
o.FindDrives:	h.FileCoreConstants
o.FindDrives:	h.FindDrives
o.FilerXHdr:	cmhg.FilerXHdr
o.Icon:	c.Icon
o.Icon:	C:h.swis
o.Icon:	C:h.kernel
o.Icon:	h.Icon
o.Icon:	C:h.kernel
o.Main:	c.Main
o.Main:	h.FilerX
o.Main:	C:h.Wimp
o.Main:	h.Icon
o.Main:	C:h.kernel
o.Main:	C:h.swis
o.FilerX:	c.FilerX
o.FilerX:	C:h.kernel
o.FilerX:	h.FilerXHdr
o.FilerX:	h.FilerX
o.FilerX:	C:h.Wimp
o.FilerX:	h.Icon
o.FilerX:	C:h.kernel
o.FilerX:	h.FindDrives
o.FilerX:	h.Icon
o.FilerX:	C:h.kernel
o.FilerX:	C:h.swis
