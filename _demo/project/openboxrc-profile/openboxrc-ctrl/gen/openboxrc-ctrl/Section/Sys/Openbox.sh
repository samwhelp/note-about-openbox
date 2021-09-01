

################################################################################
### Head: Sys
##

is_openboxrc_dir () {

	local dir_path="$1"
	local openboxrc_file_path="$dir_path/$THE_OPENBOXRC_FILE_NAME" ## ~/.config/openboxrc-profile/demo/openbox.conf

	if [ ! -f "$openboxrc_file_path" ]; then ## check ~/.config/openboxrc-profile/demo/openbox.conf
		return 1
	fi

	return 0
}

is_not_openboxrc_dir () {

	local dir_path="$1"
	local openboxrc_file_path="$dir_path/$THE_OPENBOXRC_FILE_NAME" ## ~/.config/openboxrc-profile/demo/openbox.conf

	if [ -f "$openboxrc_file_path" ]; then ## check ~/.config/openboxrc-profile/demo/openbox.conf
		return 1
	fi

	return 0

}

openboxrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_OPENBOXRC_PROFILE_DIR_PATH/$name"
}


openboxrc_check_openboxrc_dir_exists () {

	local openboxrc_dir_name="$THE_OPENBOXRC_DIR_NAME"
	local openboxrc_dir_path="$THE_OPENBOXRC_DIR_PATH"

	if ! [ -a "$openboxrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$openboxrc_dir_path" ]; then ## ~/.config/openbox is symbolic link
		return 0
	fi



	util_error_echo "## Dir is exists:" "$openboxrc_dir_path"
	util_error_echo

	util_error_echo "## Try to backup:"
	util_error_echo

	local now="$(date +%Y%m%d_%s)"
	local bak_dir_path="${HOME}/.backup/${openboxrc_dir_name}.bak"
	local bak_target_path="${bak_dir_path}/${openboxrc_dir_name}.bak.${now}"

	util_error_echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	util_error_echo "cp -a ${openboxrc_dir_path} ${bak_target_path}"
	cp -a "${openboxrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		util_error_echo
		util_error_echo '## Backup Failure!'
		#exit 1
		return 1
	fi

	util_error_echo


	return 0
}


openboxrc_profile_init_dir () {

	if ! [ -d "$THE_OPENBOXRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_OPENBOXRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_OPENBOXRC_PROFILE_DIR_PATH"
	fi

	return 0
}


openboxrc_repo_clone () {

	## $ openboxrc-get demo

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	util_error_echo "mkdir -p $THE_OPENBOXRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_OPENBOXRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_OPENBOXRC_PROFILE_DIR_PATH"
	cd "$THE_OPENBOXRC_PROFILE_DIR_PATH" ## cd ~/.local/share/openboxrc-profile


	if [ -d "$name" ]; then
		util_error_echo
		util_error_echo "## Is Exists:" "$THE_OPENBOXRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	util_error_echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/conformal/openbox.git demo

	## $ man cd
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Sys
################################################################################
