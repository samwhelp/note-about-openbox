

################################################################################
### Head: Model mod_openboxrc_profile_list
##



mod_openboxrc_profile_list () {
	#echo "mod_openboxrc_profile_list"
	#echo "$@"

	# openboxrc-ctrl list

	local name=''
	local dir_path=''

	openboxrc_profile_init_dir

	cd "$THE_OPENBOXRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_OPENBOXRC_PROFILE_DIR_PATH/$name" ## ~/.local/share/openboxrc-profile/demo
		if is_not_openboxrc_dir "$dir_path"; then ## check ~/.local/share/openboxrc-profile/demo/openbox.conf
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_openboxrc_profile_list
################################################################################
