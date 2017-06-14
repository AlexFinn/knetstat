CONFIG_MODULE_SIG=n
CONFIG_MODULE_SIG_ALL=n

KSRC ?= /lib/modules/$(shell uname -r)/build

KBUILD_EXTRA_SYMBOLS := $(KSRC)/Module.symvers

obj-m += knetstat.o

all:
	make -C $(KSRC) M=$(PWD) modules

clean:
	make -C $(KSRC) M=$(PWD) clean
