#!/bin/bash

#récupérer prénom nom = user, mdp et user ou admin
#si admin donner super user



userlist=$(cat /home/ubuntu/BashJob/JOB\ 9/Shell_Userlist.csv|awk 'NR>1'| awk 'BEGIN{ FS=" *,"; OFS="," } {$1=$1; print $0}')


for line in $userlist; do
    

    Id=$(echo $line | cut -d ',' -f 1)
    Prenom=$(echo $line | cut -d ',' -f 2)
    Nom=$(echo $line | cut -d ',' -f 3)
    Mdp=$(echo $line | cut -d ',' -f 4)
    Role=$(echo $line | cut -d ',' -f 5)
    
    Username=$Prenom-$Nom
    
sudo userdel $Username
     
done 
