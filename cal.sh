#! /bin/bash
# 2022-03-31 2019114093 CS Sunju Hong 
# calculater script

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
		n1=$(<num1.txt)
		n2=$(<num2.txt)
		if [[ "$1" = "add" ]]; then
			let Result=$n1+$n2
		elif [[ "$1" = "sub" ]]; then
			let Result=$n1-$n2
		elif [[ "$1" = "div" ]]; then
			let Result=$n1/$n2
		else
			let Result=$n1*$n2
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
		n1=$(<num1.txt)
		n2=$(<num2.txt)
		if [[ "$menu" = "add" ]]; then
			let Result=$n1+$n2
        elif [[ "$menu" = "sub" ]]; then
            let Result=$n1-$n2
        elif [[ "$menu" = "div" ]]; then
 			let Result=$n1/$n2
        else
 			let Result=$n1*$n2
		fi
 		echo "result : $Result"
		exit 1
		done

fi


