

################################################################################
### Head: Model openboxrc_profile_install
##

openboxrc_profile_install () {

	## $ bspwmrc-ctrl install demo https://github.com/samwhelp/note-about-openbox.git

	local name="$1"
	local repo_url="$2"

	util_error_echo
	openboxrc_repo_clone "$name" "$repo_url"
	util_error_echo

}

##
### Tail: Model openboxrc_profile_install
################################################################################
