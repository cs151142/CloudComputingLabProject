#!/bin/bash
function usage {
    echo "usage:            [ --build             ]
                  [ --attach            ]
                  [ --exec path/file.rb ]
                  [ --stop              ]
                  [ --help              ]"
    echo "  --build     Build Dockerfiles and run containers"
    echo "  --attach    Attach on running container and manually run ruby files"
    echo "  --exec      Execute ruby file. \"Example:\" \"./script.sh --exec hello.rb\""
    echo "  --stop      Stop running containers"
    echo "  --help      Display this message"
    exit 1
}


function getStatus {
  default="not running"
  var1=$(docker inspect -f '{{.State.Status}}' ruby-container)
  var2=$(docker inspect -f '{{.State.Status}}' vscode-container)
  status_ruby="${var1:=default}" # If var1 not set or null, set it's value to 'default'.
  status_vscode="${var2:=default}"
  echo "ruby-container    status: $status_ruby"
  echo "vscode-container  status: $status_vscode"
}

case $1 in

  --build)
    docker-compose up --detach --build
    echo "Vscode container running on http://localhost:8080/"
    ;;

  --attach)
    docker attach ruby-container
    ;;

  --exec)
    docker exec -it ruby-container ruby $2
    ;;

  --stop)
    docker-compose down
    echo "Containers Stopped successfully"
    ;;

  --status)
    getStatus
    ;;

  * | --help)
    usage
    ;;
esac


