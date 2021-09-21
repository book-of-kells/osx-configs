# configuring osx

Work in progress. So far this script is more like notes to myself.

## usage
Change the name and email attributes in the `[user]` section of gitconfig either before running the script or in your `~/.gitconfig` file after it's created.

Theoretically, it can be run it as root:
```commandline
$ sudo ./init-osx-config.sh
```
It might throw an error if `xcode-select --install` hasn't been ran yet.

## Configurations
- `~/.gitconfig`
- screenshot directory
- auto-show subtitles
- three-finger drag
- max trackpad speed
- show bluetooth status
- Spotlight resources
- firewall
- disable location settings
- show hidden files
- pyenv
- terminal settings
- custom `splits` command
- various settings in `~/.zshrc`

## Install list
- oh-my-zsh
- homebrew

### homebrew install list
#### homebrew formulae
- docker
- pyenv
- nvm
- git-credential-manager
- tree
- jq
- go
- youtube-dl

#### homebrew casks
- docker
- sublime-text
- pycharm-ce
- goland
- visual-studio-code
- malwarebytes
- lastpass
- expressvpn
- firefox
- postman
- font-fira-code
- font-jetbrains-mono
- todo: google-cloud-sdk

