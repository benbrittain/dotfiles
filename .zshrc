# Path to my oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ben"

DISABLE_AUTO_UPDATE="true"

# fixes mc problems
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial)

source $ZSH/oh-my-zsh.sh

eval `dircolors ~/.dir_colors/dircolors.ansi-dark`

export PATH=$PATH:bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ben/workspace/adt-bundle/sdk/platform-tools/:/home/ben/workspace/android-sdk-linux/tools:/home/ben/workspace/android-sdk-linux/build-tools:/home/ben/workspace/android-sdk-linux/platform-tools:/home/ben/.cabal/bin
