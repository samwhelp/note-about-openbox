#!/usr/bin/env bash

set -e


################################################################################
### Head: openbox_config_install
##
openbox_config_install () {

	echo
	echo "##"
	echo "## Config: openbox_config_install"
	echo "##"
	echo

	#echo "./config/openbox/bin/maintain-install.sh"
	#./config/openbox/bin/maintain-install.sh

	echo "make -C config/openbox install"
	make -C config/openbox install

	echo

}
##
### Tail: openbox_config_install
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	openbox_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
