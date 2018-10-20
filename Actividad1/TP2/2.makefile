
dataFile := numeros.txt
fileExists := $(wildcard $(dataFile))
ifeq ( , $(fileExists))
	msg := "Error: El archivo $(dataFile) no existe [Fail]"
else
	msg:= "$(dataFile) [Ok]"
	var := $(sort $(shell cat $(dataFile)))
endif
.PHONY: all


all:
	@echo $(msg)
	@echo $(var)


