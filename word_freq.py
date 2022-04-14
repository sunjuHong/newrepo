#!/usr/bin/python3
import sys

#HW05_Python Programming
#Ted article which is about "5 ways that you can help refugees"

f=open(sys.argv[1],"r") #textfile.txt
temp=f.readlines()
w_list=[]
for i in range(len(temp)): #string -> separate each word using "split()"
	temp[i]=temp[i].split()
	w_list=w_list+temp[i]

word_count={} #word counted using "dictionary and sorted for descending order"
for word in w_list:
	if word in word_count:
		word_count[word]+=1
	else:
		word_count[word]=1
word_count=sorted(word_count.items(),key=lambda item:item[1],reverse=True)

for i in range(int(sys.argv[2])):
	k=word_count[i]
	k=list(k)
	k[1]=str(k[1])
	k[0]
	print("{:<7}".format(k[0]),end=" ") #left alignment
	print("{:>7}".format(k[1])) #right alignment

f.close()

