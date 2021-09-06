#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Prepare / Manjaro
##

mod_manjaro_prepare () {

	echo 'pamac install openbox'
	pamac install openbox

}

##
### Tail: Model / Prepare / Manjaro
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_manjaro_prepare "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
