## Padrão *****

#set fish_color_command green
#set fish_color_param brgreen
#set fish_color_error magenta
#
#function fish_prompt
#	set sign ""
#
#	if [ "$USER" = "root" ]
#		set sign "#"
#	else
#		set sign '$'
#	end
#
#	set cwd (string replace /home/$USER "~" $PWD)
#	set machineName (cat /proc/sys/kernel/hostname)
#	echo (set_color brmagenta)"["(set_color brgreen)$cwd(set_color -o brmagenta)"]"(set_color white)$sign" >"
#end
#
#                 ___                                                     
#  ___======____=---=)                                                        
#/T            \_--===)                                                       
#[ \ (0)   \~    \_-==)                                                       
# \      / )J~~    \-=)                                                       
#  \\___/  )JJ~~~   \)                                                        
#   \_____/JJJ~~~~    \                                                       
#   / \  , \J~~~~~     \                                                      
#  (-\)\=|\\\~~~~       L__                                                   
#  (\\)  (\\\)_           \==__                                               
#   \V    \\\) ===_____   \\\\\\                                              
#          \V)     \_) \\\\JJ\J\)                                             
#                      /J\JT\JJJJ)                                            
#                      (JJJ| \UUU)                                            
#                       (UU)
#▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄
#█       █  █ █  █       █       █      █  █ █  █       █
#█   ▄▄▄▄█  █ █  █  ▄▄▄▄▄█▄     ▄█  ▄   █  █▄█  █   ▄   █
#█  █  ▄▄█  █▄█  █ █▄▄▄▄▄  █   █ █ █▄█  █       █  █ █  █
#█  █ █  █       █▄▄▄▄▄  █ █   █ █      █       █  █▄█  █
#█  █▄▄█ █       █▄▄▄▄▄█ █ █   █ █  ▄   ██     ██       █
#█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█ █▄▄▄█ █▄█ █▄▄█ █▄▄▄█ █▄▄▄▄▄▄▄█
set fish_color_command green
set fish_color_param brgreen
set fish_color_error magenta
set fish_color_git brgreen


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
	echo (set_color brmagenta)"["(set_color brgreen)$cwd (set_color green)$b (set_color -o brmagenta)"]"(set_color white)$sign (set_color white)">"
end