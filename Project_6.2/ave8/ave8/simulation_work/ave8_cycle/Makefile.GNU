#
# Makefile template
#
# Option: -EE -GNU -I. -log_stdout -log_file -target ave8_cycle.exe ave8_C.MakeInfo 
#

TARGET	= ave8_cycle.exe

SRCS	=  \
	ave8_C.cpp \
	tb_manual_ave8.cpp

HDRS	=  \
	ave8_C.h

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

ifdef CYBER_SYSTEMC_TARGET_ARCH
CWB_SC_ARCH = $(CYBER_SYSTEMC_TARGET_ARCH)
else
ifeq (, $(findstring Windows,$(OS)))
ifeq (x86_64, $(CPU_ARCH))
CWB_SC_ARCH = linux64
else
CWB_SC_ARCH = linux
endif
else
CWB_SC_ARCH = mingw
endif
endif

ifdef CYBER_SYSTEMC_HOME
CWB_SC_HOME = $(CYBER_SYSTEMC_HOME)
else
CWB_SC_HOME = $(CWB_ARCH_PATH)/osci
endif

CWB_SC_INCL = -I"$(CWB_SC_HOME)/include"
CWB_SC_LIB  = "$(CWB_SC_HOME)/lib-$(CWB_SC_ARCH)/libsystemc.a"

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
INCL	= -I"." -I"$(CWB_ARCH_PATH)/include"
CFLAGS	= $(ARCH_FLAG) -DCYCLE_NUM=-1 -DLOG_STDOUT -DLOG_FILE -O1
LDFLAGS	= $(ARCH_FLAG) -L"$(CWB_LIB)"
LIBS	= -lm -lcwbtrace -lz -lpthread $(CWB_SC_LIB)  -Wl,-rpath="$(CWB_LIB)"
OBJS	= $(notdir $(addsuffix .o,$(basename $(SRCS))))


MAKEFILE	:= $(lastword $(MAKEFILE_LIST))
DEPENDFILE	= $(MAKEFILE).depend
PRINTDIR	= --no-print-directory

.PHONY : all depend clean

all : depend
	@$(MAKE) $(PRINTDIR) -f $(MAKEFILE) $(TARGET)

$(TARGET) : $(OBJS)
	$(LINKER) -o "$@" $(OBJS) $(LDFLAGS) $(LIBS)

ave8_C.o: ave8_C.cpp
	$(CC) $(CFLAGS) $(CWB_SC_INCL) $(INCL) -c $< -o $@
tb_manual_ave8.o: tb_manual_ave8.cpp
	$(CC) $(CFLAGS) $(CWB_SC_INCL) $(INCL) -c $< -o $@

clean :
	@$(RM) -f $(OBJS) $(TARGET)

depend :
	@echo updating build dependency...
	@$(CC) $(CFLAGS) $(INCL) -DCWB_MAKEDEPEND -MM $(SRCS) > $(DEPENDFILE)
	@sleep $$(echo $${CYBER_SLEEP_AFTER_MKMFSIM:-10} | awk '{print $$1/1000}')
$(DEPENDFILE) :

-include $(DEPENDFILE)

