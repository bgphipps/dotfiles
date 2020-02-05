function ccpauth(){
  echo "fanauth aws --envGroup $@ --writeCreds; k login -g $@;"
  fanauth aws --envGroup $@ --writeCreds; k login -g $@;
}
function dockerstoprm(){
  docker stop "$@" && docker rm -v "$@"
}
