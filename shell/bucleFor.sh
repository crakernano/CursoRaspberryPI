#!/bin/bash
       for i in $( ls ); do
           echo "Fichero": $i
           chmod +x $i
       done
