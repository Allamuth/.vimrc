function fish_prompt --description 'Write out the prompt'
    set last_status $status
    if test -z $WINDOW
        printf '%s%s@%s%s%s%s %s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    else
        printf '%s%s@%s%s%s(%s)%s%s %s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
    
    printf '%s: ' (__fish_git_prompt)

end
