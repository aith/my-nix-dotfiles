# Where first arg is directory under machines, can be one of macos, fedora, nixos
# 
if [[ $1 == "" ]] #Where "$1" is the positional argument you want to validate 
 then
 echo "Argument required: ubuntu"
 exit 0

fi

mkdir -p $HOME/.config
rm -i $HOME/.config/nixpkgs/home.nix
rm -i $HOME/.config/nixpkgs/config.nix
ln -sf $(pwd) $HOME/.config/nixpkgs 
ln -sf $(pwd)/machines/$1/home.nix $HOME/.config/nixpkgs/home.nix
ln -sf $(pwd)/machines/$1/config.nix $HOME/.config/nixpkgs/config.nix