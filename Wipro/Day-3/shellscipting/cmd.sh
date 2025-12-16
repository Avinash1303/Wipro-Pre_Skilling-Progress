#!/bin/bash

fun1() {
	echo "Total number of args $#"
	echo "List of args $@"
	echo ":List of args $*"
	echo "PID: $$"

	echo "My script name is : $0"
	echo "First argument is : $1"
	echo "Second argument is : $2"
	echo "Tenth arg is : ${10}"
	echo '**************************'
}

fun1 "$@"
