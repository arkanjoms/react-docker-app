.EXPORT_ALL_VARIABLES:

STACK_NAME=react-dev
CURRENT_UID=$(id -u):$(id -g)

build:
	docker-compose -p ${STACK_NAME} build
start: build
	docker-compose -p ${STACK_NAME} up -d
stop:
	docker-compose -p ${STACK_NAME} stop
restart:
	docker-compose -p ${STACK_NAME} restart
clean:
	docker-compose -p ${STACK_NAME} down -v
logs:
	docker-compose -p ${STACK_NAME} logs -f