#!/bin/bash

#J'ai du modifier common-password dans g pam pour réduire la taille minimum des password 

userlist=$(cat /home/ubuntu/BashJob/JOB\ 9/Shell_Userlist.csv|awk 'NR>1'| awk 'BEGIN{ FS=" *,"; OFS="," } {$1=$1; print $0}')


for line in $userlist; do
    

    Id=$(echo $line | cut -d ',' -f 1)
    Prenom=$(echo $line | cut -d ',' -f 2)
    Nom=$(echo $line | cut -d ',' -f 3)
    Mdp=$(echo $line | cut -d ',' -f 4)
    Role=$(echo $line | cut -d ',' -f 5)
    
    Username=$Prenom-$Nom
    
    if [ $Role = Admin ]
    then
    
         sudo useradd -m $Username
         echo $Username:$Mdp | sudo chpasswd
         sudo usermod -G root $Username
    
    else
    
         sudo useradd $Username
         echo $Username:$Mdp | sudo chpasswd
   
   
    fi
     
done 
     
     
     


