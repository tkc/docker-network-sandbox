clear
docker-compose rm

#image clear
docker rm -f $(docker ps -a -q)
#docker rmi $(docker images -q -f "dangling=true")

docker-compose rm
docker-compose up -d

docker exec web0 php -v
docker exec web1 php -v
docker exec web2 php -v
docker exec web3 php -v

docker exec web0 env >> ./Code/web0/.env
docker exec web1 env >> ./Code/web1/.env
docker exec web2 env >> ./Code/web2/.env
docker exec web3 env >> ./Code/web3/.env

docker exec web0 service php7.0-fpm start

function ip() {
    docker-machine ip
}

echo "ip"
dockerIP=`ip`
echo $dockerIP
echo

docker exec -ti web0 bash
#docker exec -ti web1 bash