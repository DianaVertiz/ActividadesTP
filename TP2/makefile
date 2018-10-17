
SRCDIR:=src/
LIBDIR:=/usr/lib
libName+=m
ccName:=gcc
ccPath:=$(shell which $(ccName))

ifeq(,$(ccPath))
	$error("$(ccName): not found")
else
	msgPath:="$(ccName): found at $(ccPath)"
endif

.PHONY: all

srclist:= $(wildcard $(SRCDIR)*.c)

fName:= main.c

oName:=$(subst .c,,$(fName))
ifeq (,$(srclist))
	$error("Error: En el directorio $(SRCDIR) no  hay archivos *.c [Fail]")
	
else
	msg:= "$(SRCDIR) [Ok]"
endif



all:
	@echo $(msgPath)
	@echo $(msg)
	$(ccName) $(fName) -o $(oName) -l$(libName) -$(LIBDIR)

