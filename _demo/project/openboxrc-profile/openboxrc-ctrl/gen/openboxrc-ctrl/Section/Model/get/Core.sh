

################################################################################
### Head: Model mod_openboxrc_profile_get
##

mod_openboxrc_profile_get () {

	#echo "mod_openboxrc_profile_get"
	#echo "$@"

	# openboxrc-ctrl get

	local target_path="$THE_OPENBOXRC_DIR_PATH" ## ~/.config/openbox
	local dir_path="$(LANG=C file "$target_path" | awk -F ' symbolic link to ' '{print $2}')"
	local name="$(basename "$dir_path")"

	echo $name

}

##
### Tail: Model mod_openboxrc_profile_get
################################################################################
