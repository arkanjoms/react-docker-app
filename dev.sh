#!/usr/bin/env bash
export STACK_NAME="dev"
export CURRENT_UID=$(id -u):$(id -g)
case "$1" in
    start)
        echo "Starting ${STACK_NAME} stack"
        docker-compose -p ${STACK_NAME} up -d --remove-orphans --build
        ;;
    stop)
        echo "Stopping ${STACK_NAME} stack"
        docker-compose -p ${STACK_NAME} stop
        ;;
    restart)
        echo "Restarting ${STACK_NAME} stack"
        docker-compose -p ${STACK_NAME} restart
        ;;
    clean)
        echo "Cleaning ${STACK_NAME} stack"
        docker-compose -p ${STACK_NAME} down -v
        ;;
    *)
        echo "Accepted commands: start, stop, restart or clean"
        ;;
esac