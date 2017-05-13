# Credits:
#
# https://github.com/sindresorhus/pure
# https://github.com/godfat/fish_prompt-gitstatus

function fish_prompt
  set -l exit_code $status

  set_color red
  __fish_prompt_newline
  __fish_prompt_host

  if __fish_prompt_no_status_line
    set_color blue
    __fish_prompt_pwd

    set_color brblack
    __fish_prompt_git_branch
    __fish_prompt_git_dirty
    __fish_prompt_newline
  end

  set_color brblack
  __fish_prompt_caret $exit_code

  set_color normal
end

function __fish_prompt_newline
  printf "\n"
end

function __fish_prompt_host
  set -l user (whoami)
  [ $user != "Dominik" ]; and printf "%s@%s " $user (hostname -s)
end

function __fish_prompt_pwd
  printf "%s " (prompt_pwd)
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
  printf "▲ "
end

function __fish_prompt_no_status_line
  [ $TERM_PROGRAM != "Hyper" ]
end
