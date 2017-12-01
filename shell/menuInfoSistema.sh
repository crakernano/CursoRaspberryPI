#!/bin/sh

read opc

case $opc in
  1)echo usuario=$(who);;
  2)echo usuario=$(free);;
  *)echo "nop";;
esac
