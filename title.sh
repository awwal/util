#!/bin/bash
title=$1
RIGHT_NOW=$1$(date +"%x %r")
echo 'Setting title to '${title}${RIGHT_NOW}
echo -e "\033]2;$RIGHT_NOW\007"

