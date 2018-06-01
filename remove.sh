docker ps -a -q | xargs -n 1 -I {} docker stop {}

docker ps -a -q | xargs -n 1 -I {} docker rm {}

docker rmi $( docker images | tr -s ' ' | cut -d ' ' -f 3) 
