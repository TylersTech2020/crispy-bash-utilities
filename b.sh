#
clear
bash m.sh | lolcat
echo "what you want to choose " |lolcat 
echo -e "\e[5;31m 1) Encrypter / Decrypter press 1 "
echo -e "\e[5;32m 2) for random password hashed password generator 2"
echo -e "\e[5;33m 3) for finding hashes of ecrypted password "
echo -e "\e[5;36m 4) for transferring file through ssh to other machine press 4" |lolcat
echo "for checking updates press 5"| lolcat
read -p "enter value in (digits) -:" m
		  
if [ "$m" == 1 ]
then
bash k.sh
elif [ "$m" == 2 ]
then
echo "enter any word or name for random hash "
read r
echo "hashed in base64"|lolcat 
echo "$r" | base64
echo "hashed in base32" |lolcat
 echo "$r" | base32

elif [ "$m" = 3 ]
then
echo "hash finder and decrypter"
bash h.sh
elif [ "$m" == 4 ]
then
echo "example - /root/Desktop/file/"
echo " enter path of your file "
read l		
echo "enter the root name of the recievers machine with IP address "
echo "example - /root@192.168.43.31"
read -n -p "[USER@]HOST/" k
echo "enter destination path where file is to be shifted"
echo "example - /home/Desktop/sshbackup"
read -p "here -" b
rsync -av -e ssh "$l" "$k":"$b"
elif [ "$m" == 5 ]
then 
bash u.sh
else                        
echo "error invalid input given exiting !!!"
fi

