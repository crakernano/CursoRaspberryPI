#!/bin/bash
 
 libre=$(free -h | grep Mem* | sed 's/\s\+/,/g' | cut -d , -f6)
 echo "Memoria libre:" $libre
