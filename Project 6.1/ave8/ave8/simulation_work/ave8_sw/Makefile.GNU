#
# Makefile template
#
# Option: -EE -GNU -DC -I. -target ave8_sw.exe ave8_0.MakeInfo 
#

TARGET	= ave8_sw.exe

SRCS	=  \
	ave8_0.cpp \
	mt19937ar.cpp \
	cvi_lib.cpp \
	var.cpp \
	varop.cpp \
	Cybc_iovar.cpp

HDRS	=  \
	ave8_0.h

ifneq (, $(wildcard /bin/uname))
CPU_ARCH = $(shell /bin/uname -m)
endif

ifeq (, $(findstring Windows,$(OS)))
ifeq (x86_64, $(CPU_ARCH))
CWB_ARCH_PATH=$(CYBER_PATH)/linux_x86_64
ARCH_FLAG =
else
CWB_ARCH_PATH=$(CYBER_PATH)/linux
ARCH_FLAG = -m32
endif
else
CWB_ARCH_PATH=$(CYBER_PATH)
ARCH_FLAG = -m32
endif
CWB_LIB = $(CWB_ARCH_PATH)/lib

EMPTY	=
SPACE	= $(EMPTY) $(EMPTY)
ifeq (, $(wildcard  $(subst $(SPACE),\$(SPACE),$(CWB_ARCH_PATH))/gcc/bin))
CC	= g++
RM	= rm
else
CC	= "$(CWB_ARCH_PATH)/gcc/bin/g++"
RM	= "$(CWB_ARCH_PATH)/gcc/bin/rm"
endif
LINKER	= $(CC)
INCL	= -I"." -I"$(CWB_ARCH_PATH)/include" -I"$(CWB_ARCH_PATH)/include/cwb_bmsim" -I"."
CFLAGS	= $(ARCH_FLAG) -DMAIN -DLIMITLESS -DVAR32 -O1 -D"C"
LDFLAGS	= $(ARCH_FLAG)
LIBS	= -lm
OBJS	= $(notdir $(addsuffix .o,$(basename $(SRCS))))


MAKEFILE	:= $(lastword $(MAKEFILE_LIST))
DEPENDFILE	= $(MAKEFILE).depend
PRINTDIR	= --no-print-directory

.PHONY : all depend clean

all : depend
	@$(MAKE) $(PRINTDIR) -f $(MAKEFILE) $(TARGET)

$(TARGET) : $(OBJS)
	$(LINKER) -o "$@" $(OBJS) $(LDFLAGS) $(LIBS)

ave8_0.o: ave8_0.cpp
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@
mt19937ar.o: mt19937ar.cpp
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@
cvi_lib.o: cvi_lib.cpp
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@
var.o: var.cpp
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@
varop.o: varop.cpp
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@
Cybc_iovar.o: Cybc_iovar.cpp
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@

clean :
	@$(RM) -f $(OBJS) $(TARGET)

depend :
	@echo updating build dependency...
	@$(CC) $(CFLAGS) $(INCL) -DCWB_MAKEDEPEND -MM $(SRCS) > $(DEPENDFILE)
	@sleep $$(echo $${CYBER_SLEEP_AFTER_MKMFSIM:-10} | awk '{print $$1/1000}')
$(DEPENDFILE) :

-include $(DEPENDFILE)

