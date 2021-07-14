if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
	LIBSEAT_BACKEND=logind dbus-run-session sway
end

set -Ux SWAYSOCK /run/user/(id -u)/sway-ipc.(id -u).(pgrep -x sway).sock

