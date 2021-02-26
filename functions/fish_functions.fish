set fish_color_command green
set fish_color_param brgreen
set fish_color_error magenta

function fish_prompt
	set sign ""

	if [ "$USER" = "root" ]
		set sign "#"
	else
		set sign '$'
	end

	set cwd (string replace /home/$USER "~" $PWD)
	set machineName (cat /proc/sys/kernel/hostname)
	echo (set_color brmagenta)"["(set_color brgreen)$cwd(set_color -o brmagenta)"]"(set_color white)$sign">"
end