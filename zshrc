# Add personal scripts to PATH
export PATH="$PATH:$HOME/dotfiles/bin"
# Add n (nvm alternative) to PATH
export N_PREFIX="$HOME/n" # ; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export PATH="$N_PREFIX/bin:$PATH"

# Add rbenv init command
eval "$(rbenv init -)"

# Neovim colors
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# use <c-s> in all applications
stty -ixon

# Needed for Z installataion.
. `brew --prefix`/etc/profile.d/z.sh

# Remember to run zplug update every once in a while
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "adc17/pure-red-stars", as:theme

zplug load

# Added by travis gem
# [ -f /Users/adc/.travis/travis.sh ] && source /Users/adc/.travis/travis.sh

# Add redis executables
export PATH="$PATH:/Users/adc/dotfiles/redis"

# User configuration
for zsh_source in $HOME/dotfiles/zsh/*.zsh; do
  source $zsh_source
done

ensure_tmux_is_running
