#!/bin/ash
if [ -z $1 ] ; then
    cfn_nag <&0
else
    cfn_nag_scan --input-path $1
fi
