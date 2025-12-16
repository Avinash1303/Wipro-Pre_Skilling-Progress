#!/bin/bash

fruits=(apple orange berry cherry)

echo "first : ${fruits[0]} "
echo "second : ${fruits[1]}"
echo "Three: ${fruits[2]}"
echo "--------------------------"
echo "all: ${fruits[@]}"
echo "all: ${fruits[*]}" 
echo "--------------------------"
echo "all: ${fruits[@]:0:2}"
echo "all: ${fruits[*]:1:2}"
