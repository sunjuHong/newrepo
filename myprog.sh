#! /bin/bash
#2022-03-31 2019114093 CS Sunju Hong
# main script

sudo mkdir temp
echo "create temp directory..."

cp num1.txt /temp
cp num2.txt /temp
cp cal.sh /temp
echo "copy 3files to temp directory..."

PS3="select menu: "

select menu in add sub div mul
do 
	echo "$menu selected..."
	#parameter -> cal.sh
	break
done

./cal.sh $menu

