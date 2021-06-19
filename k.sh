#
clear
date  | lolcat
echo -e "\e[4;33m instagram id -- hackers__tech \e[0m"
echo -e "\e[5;32m ."

figlet -f digital -c Encrpter | lolcat
echo " 1) Encrypter " | lolcat
figlet -f digital -c Decrypter | lolcat
echo " 2) Decrypter " |lolcat

read -p "enter your choice (only in digits ) " i
case "$i" in 
1)
echo "if you want to encrypt any file then that file  is to be in working directory " | lolcat
echo "enter file or directory name " | lolcat
read r
case "$r" in 
"")
echo "nothing is entered exiting !!!" 
;;
*)
gpg -c $r
echo "file is encrypted" |lolcat 
echo "file is saved as $r .gpg"
esac
;;
2)
echo "if you want to decrypt any file then that file is to be in working directory " |lolcat
echo "enter file name "
read b
case "$b" in 
"")
echo "nothing is entered starting again !!!"
echo "for exiting press ctrl +c "
sleep 2
bash k.sh
;;
*)
echo "file hidden data is given below "|lolcat
gpg -d $b 
esac
;;
"")
echo "nothing is entered starting again pls wait or press CTRL+C to stop" | lolcat
sleep 2
bash k.sh
;;
*)
echo "error occured wrong input given starting again "|lolcat
echo "ctrl +c for exiting "| lolcat 
sleep 2
bash k.sh
esac

