# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

parse_git_dirty () {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

function git-scoreboard () {
    git log | grep '^Author' | sort |uniq -c |sort -n -r
}
function git-track () {
    branch=$(git-branch-name)
    git config branch.$branch.remote origin
    git config branch.$branch.merge refs/heads/$branch
    echo "tracking origin/$tracking"
}
function github-init () {
    git config branch.$(git-branch-name).remote origin
    git config branch.$(git-branch-name).merge refs/heads/$(git-branch-name)
}
function github-url () {
    git config remote.origin.url | sed -En 's/git(@|:\/\/)github.com(:|\/)(.+)\/(.+).git/https:\/\/github.com\/\3\/\4/p'
}

