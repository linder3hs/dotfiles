# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/bashrc.pre.bash"
export DOTFILES_PATH="/Users/lhassinger/.dotfiles"
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export DOTLY_THEME="codely"

source "$DOTFILES_PATH/shell/init.sh"
source .bash_profile
PATH=$(
  IFS=":"
  echo "${path[*]}"
)
export PATH

themes_paths=(
  "$DOTFILES_PATH/shell/bash/themes"
  "$DOTLY_PATH/shell/bash/themes"
)

for THEME_PATH in ${themes_paths[@]}; do
  THEME_PATH="${THEME_PATH}/$DOTLY_THEME.sh"
  [ -f "$THEME_PATH" ] && source "$THEME_PATH" && THEME_COMMAND="${PROMPT_COMMAND:-}" && break
done

if [[ "$(ps -p $$ -ocomm=)" =~ (bash$) ]]; then
  __right_prompt() {
    RIGHT_PROMPT=""
    [[ -n $RPS1 ]] && RIGHT_PROMPT=$RPS1 || RIGHT_PROMPT=$RPROMPT
    if [[ -n $RIGHT_PROMPT ]]; then
      n=$(($COLUMNS - ${#RIGHT_PROMPT}))
      printf "%${n}s$RIGHT_PROMPT\\r"
    fi

    if
      [[ -n "${THEME_COMMAND:-}" ]] &&
      declare -F "${THEME_COMMAND:-}" &> /dev/null
    then
      "${THEME_COMMAND:-}"
    fi
  }
  export PROMPT_COMMAND="__right_prompt"
fi

for bash_file in "$DOTLY_PATH"/shell/bash/completions/_*; do
  source "$bash_file"
done

if [ -n "$(ls -A "$DOTFILES_PATH/shell/bash/completions/")" ]; then
  for bash_file in "$DOTFILES_PATH"/shell/bash/completions/_*; do
    source "$bash_file"
  done
fi

source .bash_profile

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/bashrc.post.bash"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
