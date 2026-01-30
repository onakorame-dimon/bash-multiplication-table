#############################################################
#===========================================================
#BASH MULTIPLICATION TABLE
#===========================================================
############################################################


#===========================================================
#FULL TABLE 
#===========================================================
full_table() {
    
    echo "The full multiplication table for 3: "

        for ((i=1; i<=10; i++)) 
            do 
                product=$(( NUM * i ))
                echo "${NUM} x $i = ${product}" 
            done
}
#===========================================================
#===========================================================


#===========================================================
#PARTIAL TABLE
#===========================================================

eval_partial_table() {

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

            full_table
        fi

}



validate_ptable_input() {

if ! [[ $1 =~ ^[1-9][0-9]*$ ]] 
    then 
    echo "$1 is not a valid integer, Enter a valid integer: "
    
elif (( $1 < 1 || $1 > 10 ))
    then 
    echo "$1 is not an integer from 1 to 10. Enter an integer from 1 to 10"
fi

}

partial_table() {

read -p "Enter the starting Integer (between 1 and 10): " a
echo 
validate_ptable_input $a

read -p "Enter the ending Integer (between 1 and 10): " b
echo 
validate_ptable_input $b
    
eval_partial_table     
}


#===========================================================
#CHOOSE TABLE TYPE
#===========================================================

prompt_table_type() {

read -p "Do you want a full table or a partial table? (Enter 'f' for full 'p' for partial): " TABLE_LEN
echo

if [[ $TABLE_LEN == "f" ]] #if TABLE_LEN is full, then full tab
  then 
        full_table

elif [[ $TABLE_LEN == "p" ]] #If TABLE_LEN is part, then part tab
  then 
    partial_table
else
    echo "Enter either p or f "

fi 

}


#===========================================================
# VALIDATE INPUT INTEGER
#===========================================================

input_validation() {

read -p "Enter an integer for the multiplication table: " NUM
echo 

if [[ $NUM =~ ^[+-]?[1-9][0-9]*$ ]]
    then 
        prompt_table_type
else 
    echo "${NUM} is not a valid integer. Enter a valid integer: " 
fi

}


#===========================================================
# INIT PROGRAM
#===========================================================

init_program() {

input_validation

}


#===========================================================
# RUN THE PROGRAM
#===========================================================

init_program