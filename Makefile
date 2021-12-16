# Makefile for TaskRunner

COMPONENT   = FilerX
OBJS        = FilerX Main Enter
CMHGDEPENDS = FilerX
CUSTOMRES   = no

include CModule

#CMHG = SDFS::Chipmunk.$.Work.TaskRunner.CMunge
#CMHGFLAGS = -32bit

# Dynamic dependencies:
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
h.FilerXHdr:	cmhg.FilerXHdr
o.FilerXHdr:	cmhg.FilerXHdr
o.FilerX:	c.FilerX
o.FilerX:	C:h.kernel
o.FilerX:	h.FilerXHdr
o.FilerX:	h.FilerX
o.FilerX:	C:h.Wimp
o.FilerX:	C:h.kernel
o.FilerX:	C:h.swis
o.Main:	c.Main
o.Main:	h.FilerX
o.Main:	C:h.Wimp
o.Main:	C:h.swis
o.Main:	C:h.kernel
