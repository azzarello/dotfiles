# Defined in - @ line 1
function save-clip --wraps='xclip -se c -t image/png -o >' --description 'alias save-clip=xclip -se c -t image/png -o >'
  xclip -se c -t image/png -o > $argv;
end
