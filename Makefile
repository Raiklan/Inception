NAME = inception

all: prune reload

linux:
	@ sudo service mysql stop
stop:
	@ docker-compose -f srcs/docker-compose.yml down

clean: stop
	@ sudo rm -rf /home/saich/data

prune: stop
	@ docker system prune -f

reload: 
	@ docker-compose -f srcs/docker-compose.yml up --build

.PHONY: linux stop clean prune reload all
