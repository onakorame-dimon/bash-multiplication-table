#############################################################
#===========================================================
#BASH MULTIPLICATION TABLE
#===========================================================
############################################################

# BASH SCRIPT FOR GENERATING MULTIPLICATION TABLE

#===========================================================
#FULL TABLE 
#===========================================================

# This function is used to generate a full table 
full_table() {
    
    echo "The full multiplication table for 3: "

# Using a for loop to generate a multiplication table for NUM for 10 iterations
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

#This function is used to generate the multiplication table for a partial table
eval_partial_table() {

# Validate if the range of inputs and out-of-bound enteries
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
# Generate a full table if invalid range is provided
            full_table
        fi

}


# This function validates if the partial table input is a valid integer
validate_ptable_input() {

#Using Regex to validate if the table is an integer
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] 
    then 
    echo "$1 is not a valid integer, Enter a valid integer: "
    
elif (( $1 < 1 || $1 > 10 ))
    then 
    echo "$1 is not an integer from 1 to 10. Enter an integer from 1 to 10"
fi

}

#Calling this function implements all the logic required to generate a table and outputs the table
partial_table() {

# Prompt user for input
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

# This function is used to prompt the user for the type of table format
prompt_table_type() {

read -p "Do you want a full table or a partial table? (Enter 'f' for full 'p' for partial): " TABLE_LEN
echo

# If-elif chain used to decide which table to output based on user's input

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
#Function to validate if the a valid integer is provided before table is generated

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

while true

    do 
        read -p "Enter an integer for the multiplication table: " NUM
        echo 

        if [[ $NUM =~ ^[+-]?[1-9][0-9]*$ ]]
            then 
                prompt_table_type

        else 
            read -p "${NUM} is not a valid integer. Enter a valid integer: " 
        fi

    done 









#===========================================================
# INIT PROGRAM
#===========================================================

# This function calls the first code to start program execution
init_program() {

input_validation

}


#===========================================================
# RUN THE PROGRAM
#===========================================================

# This function runs the program
init_program