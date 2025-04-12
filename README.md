# Dotfiles

- git - sudo apt install git
- fish - sudo apt install fish
- bat / batcat - sudo apt install bat
- btop - sudo apt install btop
- exa - sudo apt install exa
- nvim - sudo apt install neovim
- tldr - sudo apt install tldr
- curl - sudo apt install curl
- rg - sudo apt install ripgrep
- fzf - sudo apt install fzf
- duf - sudo apt install duf
- gdu - sudo apt install gdu

```sh
sudo apt install git

cd ~
git init
git remote add origin git@github.com:SemyonDuB/dotfiles.git
git fetch
git checkout -f master

sudo apt install fish bat btop exa neovim tldr curl ripgrep fzf duf gdu

sudo add-shell /usr/bin/fish
chsh -s /usr/bin/fish
mkdir ~/.local/bin/
sudo apt install build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env.fish
```

helix: 
```sh
git clone https://github.com/helix-editor/helix
cd helix/
cargo install --path helix-term --locked
mkdir -p ~/.local/share/helix/runtime/
cp -a ./runtime/ ~/.local/share/helix/
cd ../
rm -rf ./helix/
```

zellij:
```sh
curl -s -L https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz | tar xvz -C ~/.local/bin/
```

broot: 
```bash
sudo apt install build-essential libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev -y
cargo install --locked broot
```

lazygit:
```sh
set lazygit_version $(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | rg -Po '"tag_name": *"v\K[^"]*')

curl -Lo lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/v"$lazygit_version"/lazygit_"$lazygit_version"_Linux_x86_64.tar.gz

tar xf lazygit.tar.gz lazygit
mv lazygit ~/.local/bin/
rm -rf lazygit*
```

set -Ux EDITOR nvim
alias -s n "nvim"

alias -s br "broot"
alias -s ls "exa -l"
alias -s la "exa -la"
alias -s cat "bat"
alias -s z "zellij"

# Useful commands

curl cheat.sh/command - like a man but better and in net
tldr - simple man with examples
