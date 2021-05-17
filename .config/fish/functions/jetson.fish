# Defined in - @ line 1
function jetson --wraps='TERM=xterm-256color sshpass -p root ssh corndog@10.0.0.96' --description 'alias jetson=TERM=xterm-256color sshpass -p root ssh corndog@10.0.0.96'
  TERM=xterm-256color sshpass -p root ssh corndog@10.0.0.96 $argv;
end
