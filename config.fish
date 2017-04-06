# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_untrackedfiles '☡'

set fish_greeting""


function spass
    env PASSWORD_STORE_DIR="~/Documents/Selfnet/repos/selfnet-pass/" 
    pass
end

# abbr --add spass 'PASSWORD_STORE_DIR="~/Documents/Selfnet/repos/selfnet-pass/" pass'

#function spass
#    set -x PASSWORD_STORE_DIR= "~/Documents/Selfnet/repos/selfnet-pass/"
#    pass
#end

#function pass
#    set -x PASSWORD_STORE_DIR= "~/.password-store/"
#    pass
#end
