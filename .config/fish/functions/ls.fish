# Defined in - @ line 1
function ls --wraps='exa -al --color=always --group-directories-first' --description 'alias ls=exa -al --color=always --group-directories-first'
  exa -al --color=always --group-directories-first $argv;
end
