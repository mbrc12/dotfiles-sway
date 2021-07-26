if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
	exec runsway
end

#set -Ux SWAYSOCK /run/user/(id -u)/sway-ipc.(id -u).(pgrep -x sway).sock
set -Ux SSDIR $HOME/media/ss

