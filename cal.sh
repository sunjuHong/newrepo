#!/bin/bash
#2022-03-31 2019114093 CS Sunju Hong 
#calculater script

echo "project management in github"
echo "run calculater..."
PS3="select menu : "

if [ $# -gt 0 ]; then
	while read p1; do
		echo "num1 : $p1"
	done < num1.txt

	while read p2; do
		echo "num2 : $p2"
	done < num2.txt
		echo "op : $1"
		n[0]=$(<num1.txt)
		n[1]=$(<num2.txt)
		if [[ "$1" = "add" ]]; then
			let Result=$((n[0]+n[1]))
		elif [[ "$1" = "sub" ]]; then
			let Result=$((n[0]-n[1]))
		elif [[ "$1" = "div" ]]; then
			let Result=$((n[0]/n[1]))
		else
			let Result=$((n[0]*n[1]))
		fi
		echo "result : $Result"
else
	echo "none operator parameter..."
	select menu in add sub div mul
	do
		while read p1; do
			echo "num1 : $p1"
		done < num1.txt

		while read p2; do
			echo "num2 : $p2"
		done < num2.txt
		echo "op : $menu"
		n[0]=$(<num1.txt)
		n[1]=$(<num2.txt)
		if [[ "$menu" = "add" ]]; then
			let Result=$((n[0]+n[1]))
        elif [[ "$menu" = "sub" ]]; then
            let Result=$((n[0]-n[1]))
        elif [[ "$menu" = "div" ]]; then
 			let Result=$((n[0]/n[1]))
        else
 			let Result=$((n[0]*n[1]))
		fi
 		echo "result : $Result"
		exit 1
		done

fi


