# Defined in - @ line 1
function up --wraps='sudo apt update && sudo apt -y upgrade && sudo apt autoremove' --description 'alias up=sudo apt update && sudo apt -y upgrade && sudo apt autoremove'
  sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove $argv;
  fisher update
  sudo snap refresh
  sudo flatpak upgrade
  conda update --all
  conda clean -ay
end
