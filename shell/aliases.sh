# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

alias admin="cd /home/carlos-agudo/Projects/housfy-services/housfy-admin"
alias api="cd /home/carlos-agudo/Projects/housfy-services/housfy-api"

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'
alias gri='git rebase -i'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'Housfy2022
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

# Docker
alias dfu="(cd /home/carlos-agudo/Projects/housfy-services/housfy-admin/docker && docker-compose --profile full up --force-recreate -d)"
alias dfd="(cd /home/carlos-agudo/Projects/housfy-services/housfy-admin/docker && docker-compose --profile full down)"


# vendor/bin/
alias fix="vendor/bin/php-cs-fixer fix \app"
alias vbb="vendor/bin/behat"
alias vbf="vendor/bin/php-cs-fixer fix --config=.php-cs-fixer-ddd.php"
alias vbu="vendor/bin/phpunit"
alias vbs="vendor/bin/phpstan analyse --memory-limit=4352M --configuration phpstan4_PHPStorm.neon"