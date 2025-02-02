# Module name
obj-m := drip.o

# Kernel source directory
KDIR := /lib/modules/$(shell uname -r)/build

# Build output directory
PWD := $(shell pwd)

# Default target
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

# Clean target
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

# PHONY targets
.PHONY: all clean

