#############################################################
#===========================================================
#BASH MULTIPLICATION TABLE
#===========================================================
############################################################

#Full table 
full_table() {
    echo
    
        for ((i=1; i<=10; i++)) 
            do 
                product=$(( NUM * i ))
                echo "${NUM} x $i = ${product}" 
            done
}


#Partial Table
partial_table() {

echo 
read -p "Enter the starting number (between 1 and 10): " a
echo 

read -p "Enter the ending number (between 1 and 10): " b
echo 

if ((b > a ))
    then
        echo "The partial multiplicatoin table for ${NUM} for ${a} to ${b}:" 
        for ((i=a; i<=b; i++))
          do 
          product=$(( NUM * i)) 
          echo "${NUM} x ${i} = ${product}"
          done 
else 
      echo -e "Invalid range. Showing full table instead.\n"

      echo "The full multiplication table for 3: "
      full_table
fi 
}


read -p "Do you want a full table or a partial table? (Enter 'f' for full 'p' for partial): " TABLE_LEN
echo 

if [[ $TABLE_LEN == "f" ]] #if TABLE_LEN is full, then full tab
  then
  #Full Multiplication Table 
    read -p "Enter a number for the multiplication table: " NUM
    full_table

elif [[ $TABLE_LEN == "p" ]] #If TABLE_LEN is part, then part tab
  then 
    read -p "Enter a number for the multiplication table: " NUM
    partial_table
else
    echo "Enter either p or f "

fi  



#==================================
#Refactoring into functions
#==================================

