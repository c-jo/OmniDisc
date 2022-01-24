# Makefile for TaskRunner

COMPONENT   = FilerX
OBJS        = FilerX \
			  Main \
			  Enter \
			  FindDrives \
			  Icon \
			  Tools \
			  FS \
			  FSParameters \
			  FSDefaults \
			  BarIcon \
			  Commands \
			  StringUtils

CMHGDEPENDS = FilerX
CUSTOMRES   = no

include CModule

#CMHG = SDFS::Chipmunk.$.Work.TaskRunner.CMunge
#CMHGFLAGS = -32bit

# Dynamic dependencies:
