####################
# zsh settings
####################

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="bdone"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# http://stackoverflow.com/questions/12281833/zsh-shell-history-not-working
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

####################
# path settings
####################

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/bin:

# Add Composer's global bin directory to the system PATH (recommended):
export PATH="$HOME/.composer/vendor/bin:$PATH"

####################
# bewstack
####################

# add jshint npm to path
# see: http://www.bwigg.com/2012/10/npm-jshint-command-not-found/
export PATH=/usr/local/share/npm/bin:${PATH}

export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

####################
# coding standards
####################

alias dcs="phpcs --standard=Drupal,DrupalPractice --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt'"
alias coder='drush coder --minor --comment --i18n --security --sql --style --druplart --ignorename'
alias phpcpd="/Users/bdone/Sites/community/phpcpd/phpcpd --names '*.php,*.module,*.install,*.inc,*.test,migrate*.inc,*.pages*.inc'"
