#!/bin/bash

while [ true ]
do 
   # echo "Sleeping for 500ms"
    sleep 0.1s
   # echo "Setting time"
    sudo mbgsetsystime > /dev/null
done