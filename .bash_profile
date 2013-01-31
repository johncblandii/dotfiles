# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

# Prompt Customization
git_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " (${ref#refs/heads/})"
}

PROMPT_COMMAND='PS1="\[\033[0;32m\]\w\[\033[0;32m\]\[\033[0;36m\]$(git_branch)\[\033[00m\]: "'

#Git
alias g='git'