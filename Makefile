PROJECT_ROOT := $(shell cd ../..; pwd)

all: compose

compose:
	JUJU_REPOSITORY=$(PROJECT_ROOT) charm compose -l debug

clean:
	$(RM) -r $(PROJECT_ROOT)/trusty/remote-deployer

.PHONY: all compose clean
