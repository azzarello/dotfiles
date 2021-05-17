# Defined in - @ line 1
function up --wraps='sudo apt update && sudo apt -y upgrade && sudo apt autoremove' --description 'alias up=sudo apt update && sudo apt -y upgrade && sudo apt autoremove'
  sudo apt update && sudo apt -y upgrade && sudo apt autoremove $argv;
end
