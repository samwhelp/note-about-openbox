

################################################################################
### Head: Util / Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2
	fi
}

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Base
##

## THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"

find_dir_path () {
	if ! [ -d "$(dirname -- "$1")" ]; then
		dirname -- "$1"
		return 1
	fi
	echo "$(cd -- "$(dirname -- "$1")" ; pwd)"
}

## THIS_BASE_DIR_PATH="$(find_dir_path "$0")"

## $ export DEBUG_OPENBOXRC_CTRL=true
is_debug () {
	if [ "$DEBUG_OPENBOXRC_CTRL" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	#THE_PLAN_DIR_PATH="$(find_dir_path "$THE_BASE_DIR_PATH/../.")"
	THE_PLAN_DIR_PATH="$(find_dir_path "$THE_BASE_DIR_PATH/.")"

	THE_CMD_VERSION='0.1'

	THE_CMD_DIR_PATH="${THE_BASE_DIR_PATH}"

	if [ "none${THE_CMD_FILE_NAME}" = 'none' ]; then
		THE_CMD_FILE_NAME='openboxrc-ctrl'
	fi

	THE_CMD_FILE_PATH="${THE_CMD_DIR_PATH}/$THE_CMD_FILE_NAME"

	## https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/project/openboxrc-profile/openboxrc-ctrl/openboxrc-ctrl
	THE_SELF_UPDATE_URL='https://raw.githubusercontent.com/samwhelp/note-about-openbox/gh-pages/_demo/project/openboxrc-profile/openboxrc-ctrl/openboxrc-ctrl'


	THE_TMP_DIR_PATH="/tmp"


	THE_ASSET_DIR_NAME="asset"
	THE_ASSET_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_ASSET_DIR_NAME"

	THE_VAR_DIR_NAME="var"
	THE_VAR_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_VAR_DIR_NAME"

	THE_PROFILE_DIR_NAME=".${THE_CMD_FILE_NAME}-profile"
	THE_PROFILE_DIR_PATH="$HOME/$THE_PROFILE_DIR_NAME"

	THE_PROJECT_DIR_NAME="${THE_CMD_FILE_NAME}"
	THE_PROJECT_DIR_PATH="$HOME/.local/share/$THE_PROJECT_DIR_NAME"

	THE_CONFIG_DIR_NAME="${THE_CMD_FILE_NAME}"
	THE_CONFIG_DIR_PATH="$HOME/.config/$THE_CONFIG_DIR_NAME"

	THE_CACHE_DIR_NAME="${THE_CMD_FILE_NAME}"
	THE_CACHE_DIR_PATH="$HOME/.cache/$THE_CACHE_DIR_NAME"




	## openbox
	THE_OPENBOXRC_DIR_NAME="openbox"
	THE_OPENBOXRC_DIR_PATH="$HOME/.config/$THE_OPENBOXRC_DIR_NAME"

	THE_OPENBOXRC_FILE_NAME="rc.xml"
	THE_OPENBOXRC_FILE_PATH="$THE_OPENBOXRC_DIR_PATH/$THE_OPENBOXRC_FILE_NAME"

	## openboxrc-profile
	THE_OPENBOXRC_PROFILE_DIR_NAME="openboxrc-profile"
	THE_OPENBOXRC_PROFILE_DIR_PATH="$HOME/.local/share/$THE_OPENBOXRC_PROFILE_DIR_NAME"

}

base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: var_dump"
	util_debug_echo "##"
	util_debug_echo "#"


	util_debug_echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"

	util_debug_echo "THE_CMD_FILE_NAME=$THE_CMD_FILE_NAME"
	util_debug_echo "THE_CMD_FILE_PATH=$THE_CMD_FILE_PATH"
	util_debug_echo "THE_CMD_DIR_PATH=$THE_CMD_DIR_PATH"

	util_debug_echo "THE_SELF_UPDATE_URL=$THE_SELF_UPDATE_URL"


	util_debug_echo "THE_TMP_DIR_PATH=$THE_TMP_DIR_PATH"


	util_debug_echo "THE_ASSET_DIR_NAME=$THE_ASSET_DIR_NAME"
	util_debug_echo "THE_ASSET_DIR_PATH=$THE_ASSET_DIR_PATH"

	util_debug_echo "THE_VAR_DIR_NAME=$THE_VAR_DIR_NAME"
	util_debug_echo "THE_VAR_DIR_PATH=$THE_VAR_DIR_PATH"




	util_debug_echo "THE_PROFILE_DIR_NAME=$THE_PROFILE_DIR_NAME"
	util_debug_echo "THE_PROFILE_DIR_PATH=$THE_PROFILE_DIR_PATH"

	util_debug_echo "THE_PROJECT_DIR_NAME=$THE_PROJECT_DIR_NAME"
	util_debug_echo "THE_PROJECT_DIR_PATH=$THE_PROJECT_DIR_PATH"

	util_debug_echo "THE_CONFIG_DIR_NAME=$THE_CONFIG_DIR_NAME"
	util_debug_echo "THE_CONFIG_DIR_PATH=$THE_CONFIG_DIR_PATH"

	util_debug_echo "THE_CACHE_DIR_NAME=$THE_CACHE_DIR_NAME"
	util_debug_echo "THE_CACHE_DIR_PATH=$THE_CACHE_DIR_PATH"




	util_debug_echo "THE_OPENBOXRC_DIR_NAME=$THE_OPENBOXRC_DIR_NAME"
	util_debug_echo "THE_OPENBOXRC_DIR_PATH=$THE_OPENBOXRC_DIR_PATH"

	util_debug_echo "THE_OPENBOXRC_FILE_NAME=$THE_OPENBOXRC_FILE_NAME"
	util_debug_echo "THE_OPENBOXRC_FILE_PATH=$THE_OPENBOXRC_FILE_PATH"

	util_debug_echo "THE_OPENBOXRC_PROFILE_DIR_NAME=$THE_OPENBOXRC_PROFILE_DIR_NAME"
	util_debug_echo "THE_OPENBOXRC_PROFILE_DIR_PATH=$THE_OPENBOXRC_PROFILE_DIR_PATH"


	util_debug_echo "#"
	util_debug_echo "##"
	util_debug_echo "### Tail: var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo
}


base_var_init

base_var_dump

##
### Tail: Base
################################################################################


################################################################################
### Head: Util / Command
##

is_function_exist () {
	if type -p "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

# is_command_exist () {
# 	if command -v "$1" > /dev/null; then
# 		return 0
# 	else
# 		return 1
# 	fi
# }

is_command_exist () {
	if [ -x "$(command -v $1)" ]; then
		return 0
	else
		return 1
	fi
}

##
### Tail: Util / Command
################################################################################


################################################################################
### Head: Util / Process
##

util_stop_all ()  {

	if is_command_exist 'pkill'; then
		util_stop_all_by_pkill "$1"
		return 0
	fi

	if is_command_exist 'killall'; then
		util_stop_all_by_killall "$1"
		return 0
	fi

	return 0
}

util_stop_all_by_pkill () {

	if pkill "$1"; then
		return 0
	fi

	return 0
}

util_stop_all_by_killall () {

	if killall -q -9 "$1"; then
		return 0
	fi

	return 0

}

##
### Tail: Util / Process
################################################################################


################################################################################
### Head: Util / SubCmd
##

sub_cmd_find_function_name () {
	echo "sub_run_$1"
}

##
### Tail: Util / SubCmd
################################################################################
