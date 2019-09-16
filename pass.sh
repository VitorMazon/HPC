#!/bin/bash

VALID_PASSWORD="abacate"
CHANCE=0

while [ "$PASSWORD" != "$VALID_PASSWORD" ]; do
 echo "Please enter the password:"
 read PASSWORD
 
 if [ "$PASSWORD" == "$VALID_PASSWORD" ]; then
   echo "You have Access!"
   echo ""
 else
   echo "ACCESS DENIED!"
   echo ""
   CHANCE=$((CHANCE+1))
   if [ "$CHANCE" == 3 ]; then
    echo "Sorry, see you next time :)"
    exit 1;
   fi
 fi
done
