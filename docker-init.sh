clear

docker-compose rm
docker-compose up -d

docker exec web1 php -v
docker exec web2 php -v
docker exec web3 php -v
#docker exec web1 composer require vlucas/phpdotenv

docker exec web1 env >> ./Code/.env
#docker exec web2 env >> ./Code/.env
#docker exec web3 env >> ./Code/.env
#docker exec -ti web1 bash
