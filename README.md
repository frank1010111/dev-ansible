# Ansible developer environment

This is a reasonable developer environment with Ubuntu. Some goodies include

- [fish](https://fishshell.com/) as the default shell
- Tinos [nerd font](https://www.nerdfonts.com/) for your terminal
- [direnv](https://direnv.net/) for per-project environmental variables
- [zoxide](https://github.com/ajeetdsouza/zoxide) to easily switch between your most-visited directories
- [bat](https://github.com/sharkdp/bat) - a better `cat`... now with... wings?
- [fd](https://github.com/sharkdp/fd) - imagine if find knew about git-ignore, and hidden files, and had a syntax you could remember
- [fzf](https://github.com/junegunn/fzf) quickly search history, files, git logs, and processes
- [ripgrep](https://github.com/BurntSushi/ripgrep) -- sure beats `find . -iname '*.py' -exec grep 'search term' {}+\` or whatever that command is.
- [tokei](https://github.com/XAMPPRocky/tokei) for getting line counts of your projects
- [eza](https://github.com/eza-community/eza) - ls improved
- A git alias expander quite a bit like [this](https://gitlab.com/pinage404/omf_pkg_enlarge_your_git_alias/-/tree/master/)
- [neovim]()

## Setup

Maks sure you've got your ssh server installed and up

```sh
sudo apt install openssh-server
sudo systemctl start sshd.service
```

Then run ansible

```sh
sudo apt install ansible
ansible-playbook -kK dev-env.yaml
```

## &#x26a0;&#xfe0f; Caveat emptor &#x26a0;&#xfe0f;

&#x26a0;&#xfe0f; Whatever you do... don't use that docker image with its default password &#x26a0;&#xfe0f;

## Post-setup

Depending on whether this is a WSL, server, or home computer, you might want some things like...

**[kitty](https://sw.kovidgoyal.net/kitty/)**

```sh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh
```

**An ssh key**

```sh
ssh-keygen -t ed25519
```

**Your git configured**

```sh
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "MY_NAME@example.com
```

Then you'll want to copy your ssh key to Github...

```sh
cat ~/.ssh/default.pub   # or cat ~/.ssh/id_rsa.pub
```

**VS Code**

Hey, it's [the standard](https://code.visualstudio.com/).

```sh
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code
```

**Lazy vim**

I kinda like [LazyVim](https://www.lazyvim.org/)

Use the freshest neovim:

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable
# upgrade
sudo apt update && sudo apt upgrade
```

Backup your config

```sh
mv ~/.config/nvim{,.bak}
# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
