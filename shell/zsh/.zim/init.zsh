zimfw() { source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/zimfw.zsh "${@}" }
zmodule() { source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/zimfw.zsh "${@}" }
typeset -g _zim_fpath=(/home/carlos-agudo/.dotfiles/shell/zsh/.zim/modules/git-info/functions)
fpath=(${_zim_fpath} ${fpath})
autoload -Uz -- coalesce git-action git-info
source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/modules/environment/init.zsh
source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/modules/input/init.zsh
source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/modules/completion/init.zsh
source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/carlos-agudo/.dotfiles/shell/zsh/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
