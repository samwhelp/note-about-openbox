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

	echo "mkdir -p $HOME/.config/openbox"
	mkdir -p "$HOME/.config/openbox"

	echo "install -Dm644 ./config/openbox/rc.xml $HOME/.config/openbox/rc.xml"
	install -Dm644 "./config/openbox/rc.xml" "$HOME/.config/openbox/rc.xml"

	echo "install -Dm644 ./config/openbox/menu.xml $HOME/.config/openbox/menu.xml"
	install -Dm644 "./config/openbox/menu.xml" "$HOME/.config/openbox/menu.xml"

	echo "install -Dm755 ./config/openbox/autostart $HOME/.config/openbox/autostart"
	install -Dm755 "./config/openbox/autostart" "$HOME/.config/openbox/autostart"

	echo "install -Dm644 ./config/openbox/environment $HOME/.config/openbox/environment"
	install -Dm644 "./config/openbox/environment" "$HOME/.config/openbox/environment"

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
