function ccpauth(){
  echo "fanauth aws --envGroup $@ --writeCreds; kubernatics login -g $@;"
  fanauth aws --envGroup $@ --writeCreds; kubernatics login -g $@;
}
function dockerstoprm(){
  docker stop "$@" && docker rm -v "$@"
}
