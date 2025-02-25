ARCH_IMG = Arch-Linux-x86_64-basic.qcow2
ARCH_URL = https://geo.mirror.pkgbuild.com/images/latest/$(ARCH_IMG)
IMG_DIR = img
VM_NAME = arch-test
MEM = 2048
CPUS = 2


## install: force install
.PHONY: install
install:
	makepkg -fi
	makepkg --printsrcinfo > .SRCINFO

## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## clean: Clean all files
.PHONY: clean
clean:
	rm -rf pkg/ src/ *.pkg.tar.zst

## nuke: Restore git to clean state
.PHONY:nuke
nuke:
	git clean -xdf
