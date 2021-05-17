# Defined in - @ line 1
function scu-linux --wraps='cd /run/user/1000/gvfs/sftp:host=linux.dc.engr.scu.edu,user=cazzarel/home/cazzarel' --description 'alias scu-linux=cd /run/user/1000/gvfs/sftp:host=linux.dc.engr.scu.edu,user=cazzarel/home/cazzarel'
  cd /run/user/1000/gvfs/sftp:host=linux.dc.engr.scu.edu,user=cazzarel/home/cazzarel $argv;
end
