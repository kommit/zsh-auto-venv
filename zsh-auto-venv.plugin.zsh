# Functions
function venv-activate(){
	if [ -d "$VIRTUAL_ENV" ] ; then
		echo "${fg_bold[magenta]}deactive${reset_color}: ${fg_bold[grey]}$VIRTUAL_ENV${reset_color}"
		deactivate
	fi

	CUR_DIR=$(pwd)
	while [ "$CUR_DIR" != "/" ]; do
		CUR_VENV=$CUR_DIR/.venv
		CUR_ACTIVATE=$CUR_VENV/bin/activate

		if [ -f "$CUR_ACTIVATE" ] ; then
			echo "${fg_bold[green]}active${reset_color}: ${fg_bold[grey]}$CUR_VENV${reset_color}"
			source $CUR_ACTIVATE
			return 0
		else
			CUR_DIR=$(dirname $CUR_DIR)
		fi
	done

	echo "${fg_bold[red]}No virtualenv found${reset_color}"
	return 127
}

function venv-deactivate(){
	if [ -d "$VIRTUAL_ENV" ] ; then
		echo "${fg_bold[magenta]}deactive${reset_color}: ${fg_bold[grey]}$VIRTUAL_ENV${reset_color}"
		deactivate
	fi
}

function venv-current() {
	echo "${fg_bold[grey]}$VIRTUAL_ENV${reset_color}"
}

# Alias
alias va='venv-activate'
alias vd='venv-deactivate'
alias vc='venv-current'
