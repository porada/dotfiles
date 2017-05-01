function md --description "Create a directory and enter it"
  set directory $argv[1]

  mkdir -p $directory
  and cd $directory
end
