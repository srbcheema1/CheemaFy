function _cheemaFy_status() {
	if [ -f ~/.CheemaFy/enabled ]; then
		echo "CheemaFy is currently enabled"
	elif [ -f ~/.CheemaFy/disabled ]; then
		echo "CheemaFy is currently disabled"
	else
		echo "CheemaFy not configured correctly please contact srbcheema2@gmail.com for help"
	fi
};

function _cheemaFy_refresh() {
	if [ -f ~/.CheemaFy/enabled ]; then
		source ~/programs/CheemaFy/bash/bash_extended
	else
		echo "to refresh first enable cheemaFy"
		_cheemaFy_status;
	fi
}

_cheemaFy_help="
Available options:
--help      : display this message
--status    : tell if CheemaFy is enabled or not.
--refresh   : refresh any changes did to any function in cheemafy
--enable    : enable features of CheemaFy
--diable    : disable features of CheemaFy

Thanks for using CheemaFy
"
function CheemaFy(){
	if [ $1 = "--help" ]; then
		echo "$_cheemaFy_help"
		return
	fi

	if [ $1 = "--status" ]; then
		_cheemaFy_status;

	elif [ $1 = "--refresh" ]; then
		_cheemaFy_refresh;

	elif [ $1 = "--enable" ]; then
		if [ -f ~/.CheemaFy/disabled ]; then
			mv ~/.CheemaFy/disabled ~/.CheemaFy/enabled
			_cheemaFy_refresh;
			echo "CheemaFy is enabled now"
		else
			_cheemaFy_status;
		fi

	elif [ $1 = "--disable" ]; then
		if [ -f ~/.CheemaFy/enabled ]; then
			mv ~/.CheemaFy/enabled ~/.CheemaFy/disabled
			echo "CheemaFy is disabled now, please start new session of terminal"
		else
			_cheemaFy_status;
		fi
	fi
};