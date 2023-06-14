#!/bin/bash

no1=4
no2=5

let result=no1+no2
echo $result

let no1++
echo $no1

result2=$[ no1 + no2 ]
echo $result2

result3=$[ $no1 + 100 ]
echo $result3


result4=`expr 3 + 4`
echo $result4

result4=$(expr $no1 + 5)
echo $result4