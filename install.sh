if ! command -v yay
then
  pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -r yay
fi
yay -Syuq --noconfirm --needed neovim zoxide i3-wm autotiling polybar flameshot ttf-cascadia-code-nerd dunst rofi i3lock kitty fzf zsh oh-my-posh fastfetch btop feh lf cava oranchelo-icon-theme
cd ~/dotfiles
stow . 
