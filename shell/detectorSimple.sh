#!/bin/bash

num=$(wc ips.txt|cut -d" " -f2)
echo $num
