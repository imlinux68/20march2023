#!/bin/bash

functiom makedirs() {
echo "1. makedirs"
mkdir -p Networking/{class/{ip,a,x},cidr/{mask,b}}
echo "2. rename x to c"
mv ${PWD}/Networking/class/x ${PWD}/Networking/class/c
echo "3. move ip to cidr"
mv Networking/class/ip Networking/cidr/
echo "4. move b to class i rel"
mv  Networking/cidr/b Networking/class/
echo "5. insert text"
echo "CIDR notation is a compact representation of an IP address and its associated
network mask.
A CIDR address looks like a normal IP address, except that it ends with a slash
followed by a number.
The number after the slash represents the number of addresses in the range" > Networking/cidr/cidr.txt
echo "6. copy cidr.tx to mask and ip"
tee Networking/cidr/mask/cidr.txt Networking/cidr/ip/cidr.txt < Networking/cidr/cidr.txt
echo "7. delete networkdirs"
rm -rf Networking
}


function createRename() {
	touch file{1..9}.txt
	i=1; for file in *.txt ; do mv "$file" "document$((i++))" ; done
	ls
	rm document*


}
