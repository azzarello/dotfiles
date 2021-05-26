starship init fish | source
fish_vi_key_bindings

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/corndog/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set -x BAT_THEME Nord
#set -x PAGER "/bin/sh -c \"unset PAGER;col -b -x | \
    #vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    #-c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    #-c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
