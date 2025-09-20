#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH="$HOME/.fzf/bin:$HOME/.local/bin:$PATH"

# Tmux-Sessionizer and Tmux-Windowizer configurations
bind '"\C-f":"tmux-sessionizer\n"'
bind '"\C-g":"tmux-windowizer\n"'

# fzf-configurations-Pure functionality
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Minimal-fzf-No previews, bottom-attached
export FZF_DEFAULT_OPTS='--height 40% --reverse --no-info --no-scrollbar
--color=bg:-1,bg+:-1,fg:#ffffff,fg+:#ffffff
--color=hl:#81e6d9,hl+:#f56565,pointer:#f56565,prompt:#63b3ed'
# Removal-of-previews from all key bindings
export FZF_CTRL_T_OPTS=""
export FZF_CTRL_R_OPTS=""
export FZF_ALT_C_OPTS=""

# Sourcing fzf-key-bindings and completions
source ~/.fzf/shell/key-bindings.bash
source ~/.fzf/shell/completion.bash
# Custom fzf-bindings
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
