# Aliases do Sistema
alias ls='exa -a'
alias mkdir='mkdir -pv'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias uninstall='sudo apt remove'

# Aliases do Git
alias status='git status'
alias push='git push origin main'
alias branch='git branch -M main'
alias origin='git remote add origin'
alias github='git push -u origin main'
alias commit='git add * && git commit -m'
alias init='git init && touch .gitignore README.md'
