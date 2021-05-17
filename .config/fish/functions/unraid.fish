# Defined in - @ line 1
function unraid --wraps='sshpass -p T0v@El@n@F1sher ssh root@10.0.0.125' --wraps='sshpass -p T0v@El@n@F1sher TERM=xterm-256color ssh root@10.0.0.125' --wraps='TERM=xterm-256color sshpass -p T0v@El@n@F1sher ssh root@10.0.0.125' --description 'alias unraid=TERM=xterm-256color sshpass -p T0v@El@n@F1sher ssh root@10.0.0.125'
  TERM=xterm-256color sshpass -p T0v@El@n@F1sher ssh root@10.0.0.125 $argv;
end
