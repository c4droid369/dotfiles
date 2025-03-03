# Created by newuser for 5.9
function emacs {
    if [[ $# -eq 0 ]]; then
	/usr/local/bin/emacs
	return
    fi

    args=($*)

    for ((i=0; i <= ${#args}; i++)); do
	local a=${args[i]}

	if [[ ${a:0:1} == '-' && ${a} != '-c' && ${a} != '--' ]]; then
	    /usr/local/bin/emacs ${args[*]}
	    return
	fi
    done
    setsid /usr/local/bin/emacsclient -n -a /usr/local/bin/emacs ${args[*]}
}
