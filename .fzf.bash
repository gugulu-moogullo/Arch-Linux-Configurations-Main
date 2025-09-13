# Setup fzf
# ---------
if [[ ! "$PATH" == */home/theprimeagen/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/theprimeagen/.fzf/bin"
fi

eval "$(fzf --bash)"
