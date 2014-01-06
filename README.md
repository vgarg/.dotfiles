### Dotfiles
1. Vim configuration `.vimrc`
2. Tmux configuration `.tmux.conf`
3. Bash profile `.bash_profile`

### Setup
1. Clone this repo: `git clone https://github.com/vgarg/.dotfiles`

2. Set execute permissions on `setup.sh`: `chmod u+rwx setup.sh`

3. Run `./setup.sh`

4. Start VIM by running `vim`. You may see some errors. These are due to missing VIM plugins. These will be installed in the next step. Ignore errors for now

5. Run `:BundleInstall` from VIM to install plugins using [vundle](https://github.com/gmarik/vundle)
