PATH=$PATH:~/bin

# Prompt Customization
git_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " (${ref#refs/heads/})"
}

# cd into whatever is the forefront Finder window.
cdf() {  # short for cdfinder
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

PROMPT_COMMAND='PS1="\[\033[0;32m\]\w\[\033[0;32m\]\[\033[0;36m\]$(git_branch)\[\033[00m\]: "'

#Git
alias g='git'

#rbenv
eval "$(rbenv init -)"

#connection throttling
throttle(){
    sudo ipfw pipe 1 config bw $1KByte/s && sudo ipfw add 1 pipe 1 src-port $2
}

rmthrottle(){
    sudo ipfw delete 1
}

#finder aliases
alias ll="ls -lahG"
alias irbs="irb --simple-prompt"

#RAILS
alias rake="bundle exec rake"
alias bec="bundle exec cucumber"
alias ber="bundle exec spec"
alias powr="touch tmp/restart.txt"
alias rdbm='rake db:migrate && rake db:test:prepare && rake db:seed'
alias rdbreset="rake db:drop && rake db:migrate && rake db:test:prepare && rake db:seed"
alias rspec='rake spec'
alias tdl='tail -f ./log/development.log'
alias ttl='tail -f ./log/test.log'

alias work="cd ~/Work"
