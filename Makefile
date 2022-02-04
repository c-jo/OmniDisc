# Makefile for OmniDisc

COMPONENT   = OmniDisc
OBJS        = OmniDisc \
			  Main \
			  Errors \
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

CMHGDEPENDS = OmniDisc
CUSTOMRES   = no
include CModule

#CMHG = cmunge
#CMHGFLAGS =-32bit

# Dynamic dependencies:
