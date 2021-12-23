BUILD_DIR=./test
PBUILDER_DISTRO=ubuntu
PBUILDER_VERSION=focal
PBUILDER_ARCH=amd64
PBUILDER_TARBALL=$(BUILD_DIR)/$(PBUILDER_DISTRO)-$(PBUILDER_VERSION)-base.tgz

mkenv: Makefile
	sudo pbuilder --create \
		--distribution $(PBUILDER_VERSION) \
		--architecture $(PBUILDER_ARCH) \
		--basetgz $(PBUILDER_TARBALL)

login: Makefile
	sudo pbuilder --login --basetgz $(PBUILDER_TARBALL)

.PHONY: mkenv login