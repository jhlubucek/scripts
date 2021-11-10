#!/bin/bash
alias docgo='echo kokos'

# =====================================================================dev specific
alias cddev='cd /var/www/html/private/jhlubucek/'
alias cdprivate='cd /var/www/html/private/jhlubucek'
alias notes='cat ~/notes.txt'
alias editnotes='nano ~/notes.txt'
alias pull='git pull && composer install'

# --------------------------------------------------------scriprs dev
alias pullall='~/scripts/pull.sh'
alias ru='~/scripts/reset.sh'
alias check='~/scripts/check.sh'

alias ccsdc='docker exec -it jhlubucek_ccs bash'
alias ccsrestart='docker restart jhlubucek_ccs'
alias dclist='docker ps | grep jhlub'

alias bedc='docker exec -it php-bin-extractor bash'

