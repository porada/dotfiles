# Credits:
#
# https://github.com/sindresorhus/pure
# https://github.com/godfat/fish_prompt-gitstatus

function fish_prompt
  set -l exit_code $status

  set_color blue
  __fish_prompt_pwd

  set_color brblack
  __fish_prompt_git_branch
  __fish_prompt_git_dirty

  set_color magenta
  __fish_prompt_caret $exit_code

  set_color normal
end

function __fish_prompt_pwd
  printf "\n%s " (prompt_pwd)
end

function __fish_prompt_git_branch
  set -l git_branch (command git symbolic-ref HEAD ^ /dev/null | sed -e "s|^refs/heads/||")
  [ -n "$git_branch" ]; and printf $git_branch
end

function __fish_prompt_git_dirty
  set -l git_status (command git status --porcelain ^ /dev/null)
  [ -n "$git_status" ]; and printf "·"
end

function __fish_prompt_caret
  [ $argv[1] -ne 0 ]; and set_color --bold red
  printf "\n› "
end
