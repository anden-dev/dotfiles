#!/bin/sh
docker_prune() {
	docker system prune --volumes -fa
}

docker_up() {
	colima start
}

export DOCKER_DEFAULT_PLATFORM=linux/amd64
export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
