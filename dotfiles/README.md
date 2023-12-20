# Dotfiles

All configuration related files are stored here.

## Managing Dotfiles

### Dotfiles structure

-   `README.md` - This file
-   `setup.sh`
    -   install `zsh`, `omz`, `p10k`
    -   install tools
    -   create workspace directories
    -   clone pass repo
    -   clone git workspace repos
-   `.bash_profile`
-   System
    -   `.aliases`
    -   `.exports`
    -   `.functions`
    -   `.path`
    -   `.extras`
-   zsh
    -   `.zshrc`
    -   `.p10k.zsh`
-   git
    -   `.gitconfig`
    -   `.gitignore_global`
-   config
    -   `chezmoi.yaml`

### Dotfiles managers

-   [Chezmoi](https://github.com/twpayne/chezmoi) (Current ✔️)
-   Bare git
    -   [ackama](https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained)
    -   [marcel](https://marcel.is/managing-dotfiles-with-git-bare-repo/)
    -   [Sample Github repo](https://github.com/mathiasbynens/dotfiles)

## Tools that I use:

-   [Exhaustive list](https://github.com/agarrharr/awesome-cli-apps)
-   [Mac OSX only](https://git.herrbischoff.com/awesome-macos-command-line/about)

### Terminal

-   Mac OSX : [iTerm2](https://iterm2.com/)
-   Windows : [Terminal](https://github.com/Microsoft/Terminal)/[Fluent](https://github.com/felixse/FluentTerminal)
-   Linux : [Kitty](https://github.com/kovidgoyal/kitty)/[Alacritty](https://github.com/alacritty/alacritty)

#### Themes

        -   Dracula
        -   Wombat
        -   Tomorrow Night
        -   Flatland
        -   Nord

#### Shell

-   Base : [Zsh](https://www.zsh.org/)
-   Configuraton manager : [Oh-my-zsh](https://ohmyz.sh/)
-   Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

#### ZSH Plugins

-   zsh-autosuggestions
-   zsh-syntax-highlighting
-   [Complete list](https://project-awesome.org/unixorn/awesome-zsh-plugins)

#### Command replacements

-   [bat](https://github.com/sharkdp/bat) : `cat` with syntax highlighting and more
-   [exa](https://github.com/ogham/exa) : `ls` with colors and icons
-   [fasd](https://github.com/clvv/fasd) : quickly access files and directories
-   [fkill](https://github.com/sindresorhus/fkill-cli) : better way to `kill` processes
-   [fzf](https://github.com/junegunn/fzf) : `find` with fuzzy search
-   [htop](https://htop.dev/) : interactive `top`
-   [nnn](https://github.com/jarun/nnn) : terminal file browser
-   [ripgrep](https://github.com/BurntSushi/ripgrep) : faster `grep`
-   [sshpass](https://linux.die.net/man/1/sshpass) : `ssh` without password prompt
-   [timg](https://github.com/hzeller/timg) : image and video viewer

#### JFF

-   cowsay
-   fortune
-   lolcat
-   neofetch

### Dev tools

-   [SDKMAN](https://whichjdk.com/) to manage java versions
-   pyenv to manage python versions
-   dbngin to manage mysql/postgres versions
-   dbdeployer for creating mysql relication setups

## Workspace Structure

-   builds
-   output
-   projects

## IDEs
-   IntelliJ IDEA, PyCharm (Intellij Toolbox)
-   VS Code
-   Postman
-   MySQL Workbench
