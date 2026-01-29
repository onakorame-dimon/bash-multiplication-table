#############################################################
#===========================================================
#BASH MULTIPLICATION TABLE
#===========================================================
############################################################


read -p "Enter a number for the multiplication table: " NUM

for i in {1..10} 
    do 
    product=$(expr ${NUM} \* $i)
      echo "${NUM} x $i = ${product}" 
    done

#read -p "Do you want a full table or a partial table? (Enter 'f' for full 'p' for partial): ' TABLE_LEN


