function fish_prompt
	set sign ""

	if [ "$USER" = "root" ]
		set sign '😎'
	else
		set sign '😎'
	end

    if not set -q __git_cb
    	set __git_cb (git branch ^/dev/null | grep \* | sed 's/* //')""
		set b '('$__git_cb')'
	end
	
	set cwd (prompt_pwd)
	set machineName (cat /proc/sys/kernel/hostname)
	echo (set_color brmagenta)"[" (set_color brgreen)$cwd (set_color green)$b (set_color -o brmagenta)"]"(set_color white)$sign (set_color white)">"
end