#
# Makefile template
#
# Option: -EE -GNU -DC -I. -cc=gcc -target ave8_sw.exe ave8_sw.MakeInfo 
#

TARGET	= ave8_sw.exe

SRCS	=  \
	../../ave8_sw.c

HDRS	= 

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
CC	= "gcc"
LINKER	= $(CC)
ifeq (, $(wildcard  $(subst $(SPACE),\$(SPACE),$(CWB_ARCH_PATH))/gcc/bin))
RM	= rm
else
RM	= "$(CWB_ARCH_PATH)/gcc/bin/rm"
endif
INCL	= -I"." -I"$(CWB_ARCH_PATH)/include"
CFLAGS	= $(ARCH_FLAG) -DC -O1 -D"C"
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

ave8_sw.o: ../../ave8_sw.c
	$(CC) $(CFLAGS) $(INCL) -c $< -o $@

clean :
	@$(RM) -f $(OBJS) $(TARGET)

depend :
	@echo updating build dependency...
	@$(CC) $(CFLAGS) $(INCL) -DCWB_MAKEDEPEND -MM $(SRCS) > $(DEPENDFILE)
	@sleep $$(echo $${CYBER_SLEEP_AFTER_MKMFSIM:-10} | awk '{print $$1/1000}')
$(DEPENDFILE) :

-include $(DEPENDFILE)

