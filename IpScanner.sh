#!/bin/bash
#
#********************************************************************
#encoding -*-utf8-*-
#********************************************************************
> ./ip_up.log
> ./ip_down.log


for i in {1..254};
do
{ 
echo $i scaning 
for j in {1..254};
do
{
if ping -c1 -W1 172.35.$i.$j &>/dev/null;then
echo -n '172.35.$i.$j', >> ./ip_up.log
else
echo -n '172.35.$i.$j', >> ./ip_down.log
fi
} &
done
} &
done
wait #退出