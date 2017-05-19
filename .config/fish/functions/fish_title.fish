function fish_title
  __fish_title_pwd
  __fish_title_command
end

function __fish_title_command
  test $_ != "fish"; and printf " · $_"
end

function __fish_title_pwd
  printf "%s" (prompt_pwd)
end
