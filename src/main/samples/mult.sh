#!/bin/bash

z=`echo "%(x1~[1,2]) * %x2" | bc -l`

echo 'z='$z
