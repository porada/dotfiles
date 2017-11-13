# Credits:
#
# https://github.com/sindresorhus/pure
# https://github.com/godfat/fish_prompt-gitstatus

function fish_prompt
  set -l exit_code $status

  set_color $fish_color_user
  __fish_prompt_newline
  __fish_prompt_host

  set_color --bold $fish_color_cwd
  __fish_prompt_pwd

  set_color normal
  set_color brblack
  __fish_prompt_git_branch
  __fish_prompt_git_dirty
  __fish_prompt_newline

  set_color brblack
  __fish_prompt_caret $exit_code

  set_color normal
end

function __fish_prompt_newline
  printf "\n"
end

function __fish_prompt_host
  test -n "$SSH_CONNECTION"; and printf "%s@%s " $USER (hostname -s)
end

function __fish_prompt_pwd
  set -l fish_prompt_pwd_dir_length 0
  test (id -u) -eq 0; and set_color $fish_color_cwd_root
  printf "%s " (prompt_pwd)
end

function __fish_prompt_git_branch
  set -l git_branch (command git symbolic-ref HEAD ^ /dev/null | sed -e "s|^refs/heads/||")
  test -n "$git_branch"; and printf $git_branch
end

function __fish_prompt_git_dirty
  set -l git_status (command git status --porcelain ^ /dev/null)
  test -n "$git_status"; and printf "·"
end

function __fish_prompt_caret
  test $argv[1] -ne 0; and set_color $fish_color_error
  switch $USER
    case "dom"; printf "▲ "
    case "pi";  printf "π "
    case "*";   printf "\$ "
  end
end
