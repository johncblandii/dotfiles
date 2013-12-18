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

#Reset Pow
alias powr="touch tmp/restart.txt"

#rbenv
eval "$(rbenv init -)"
