docker_prune() {
  docker system prune --volumes -fa
}

docker_up() {
  colima start
}

dclear() {
  docker ps -a -q | xargs docker kill -f
  docker ps -a -q | xargs docker rm -f
  docker images | grep "api\|none" | awk '{print $3}' | xargs docker rmi -f
  docker volume prune -f
}

alias docker-clear=dclear

dreset() {
  dclear
  docker images -q | xargs docker rmi -f
  docker volume rm $(docker volume ls | awk '{print $2}')
  rm -rf ~/Library/Containers/com.docker.docker/Data/*
  docker system prune -a
}

export DOCKER_DEFAULT_PLATFORM=linux/amd64
export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
