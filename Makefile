all:
	sudo mkdir -p /home/igeorge/data/wordpress
	sudo mkdir -p /home/igeorge/data/mysql
	docker compose -f ./srcs/docker-compose.yml up -d --build

stop:
	docker compose -f ./srcs/docker-compose.yml down

clean: stop
	-docker rmi -f `docker images -qa`
	-docker volume rm -f `docker volume ls -q`
	sudo rm -rf /home/igeorge/data/wordpress
	sudo rm -rf /home/igeorge/data/mysql

re: clean all

.PHONY: all stop clean re
