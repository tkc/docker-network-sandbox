clear

docker-compose rm
docker-compose up -d

echo 'laravel'
docker exec laravel php -v
echo 'web1'
docker exec web1 php -v
echo 'web2'
docker exec web2 php -v
echo 'web3'
docker exec web3 php -v

docker exec laravel env >> ./Code/laravel/.env
docker exec web1 env >> ./Code/web1/.env
docker exec web2 env >> ./Code/web2/.env
docker exec web3 env >> ./Code/web3/.env

function ip() {
    docker-machine ip
}


echo
echo "ip address";

iP=`ip`
echo $iP
echo


#docker exec -ti web1 bash