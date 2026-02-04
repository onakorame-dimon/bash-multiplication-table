#!/bin/bash

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
    
    echo "The full multiplication table for ${NUM}: "

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
                echo "The partial multiplicatoin table for ${NUM} for range ( ${a} to ${b} ):" 
                for ((i=a; i<=b; i++))
                    do 
                    product=$(( NUM * i)) 
                    echo "${NUM} x ${i} = ${product}"
                    done 
        else 
            echo -e "Invalid range (starting integer: $a ending integer: $b)"
            echo -e "Showing full table instead.\n"

# Generate a full table if invalid range is provided
            full_table
        fi

}



# Function required to aid generation of partial table

partial_table() {

#Validate input for starting integer 

p_table=true

while $p_table
do
    read -p "Enter a starting Integer (between 1 and 10): " a
    echo 

        if [[ $a == "q" ]]
            then 
            exit
        fi 

        if ! [[ $a =~ ^[1-9][0-9]*$ ]] 
            then 

            while $p_table 
                do
                read -p "$a is not a valid integer, Enter a valid integer: " a
                    if  [[ $a =~ ^[1-9][0-9]*$ ]]
                        then 
                            if  (( $a < 1 || $a > 10 ))
                                then 
                                continue 2 # This specific code logic makes it tricky to refactor the input validation of starting and ending integer
                            else 
                                p_table=false
                                
                            fi           
                    else
                        continue
                    fi
            done             

        elif (( $a < 1 || $a > 10 ))
           then  
            while $p_table
            do
                read -p "$a is not an integer from 1 to 10. Enter an integer from 1 to 10: " a
                if  [[ $a =~ ^[1-9][0-9]*$ ]]
                        then 
                            if  (( $a < 1 || $a > 10 ))
                                then 
                                continue 
                            else 
                                p_table=false    
                            
                            fi           
                else
                        continue 2
                fi    
   
            done        
        else 
            break

        fi

done

#Validate input for ending integer

p_table=true

while $p_table
do
    read -p "Enter an ending Integer (between 1 and 10): " b
    echo 

         
        if [[ $b == "q" ]]
            then 
            exit
        fi 

        if ! [[ $b =~ ^[1-9][0-9]*$ ]] 
            then 

            while $p_table 
                do
                read -p "$b is not a valid integer, Enter a valid integer: " b
                    if  [[ $b =~ ^[1-9][0-9]*$ ]]
                        then 
                            if  (( $b < 1 || $b > 10 ))
                                then 
                                continue 2
                            else 
                                p_table=false
                                
                            fi           
                    else
                        continue
                    fi
            done                

        elif (( $b < 1 || $b > 10 ))
           then  
            while $p_table
            do
                read -p "$b is not an integer from 1 to 10. Enter an integer from 1 to 10: " b
                if  [[ $b =~ ^[1-9][0-9]*$ ]]
                        then 
                            if  (( $b < 1 || $b > 10 ))
                                then 
                                continue 
                            else 
                                p_table=false    
                            
                            fi           
                else
                        continue 2
                fi    
   
            done        
        else 
            break

        fi

done

eval_partial_table     

}


#===========================================================
#CHOOSE TABLE TYPE
#===========================================================

# This function is used to prompt the user for the type of table format

prompt_table_type() {

prompt_type=true
while $prompt_type
    do
    read -p "Do you want a full table or a partial table? (Enter 'f' for full 'p' for partial): " TABLE_LEN
    echo

    if [[ $TABLE_LEN == "q" ]]
    then 
        exit 

    elif [[ $TABLE_LEN == "f" ]] #if TABLE_LEN is full, then full table
    then 
            full_table 
            prompt_type=false

    elif [[ $TABLE_LEN == "p" ]] #If TABLE_LEN is part, then part table
    then 
        partial_table
        prompt_type=false
        
    else
        while $prompt_type      # Refactoring looks attractive here. While the structure looks similar, it's quite 
                                # different from the previous code block. For example, it is part of the if-else logic  
                                # of the previous block.
        do
        read -p "Enter either p or f, or q to quit: "   TABLE_LEN

            if [[ $TABLE_LEN == "q" ]]
            then 
                exit 

            elif [[ $TABLE_LEN == "f" ]] #if TABLE_LEN is f, then full table
            then 
                    full_table
                    prompt_type=false
                    
            elif [[ $TABLE_LEN == "p" ]] #If TABLE_LEN is part, then part tab
            then 
                partial_table
                prompt_type=false
                
                
            else
                continue
            fi
        done

    fi 
done

}


#===========================================================
# PROMPT INPUT INTEGER
#===========================================================
#Function to prompt user for input

input_prompt() {

input_prompt=true

while $input_prompt

do 

echo -e "\n#====================================================================#"
echo -e "# Welcome to the Multiplication Table Generator.                     #" 
echo -e "# To begin, input a number. Enter the letter 'q' to quit the program.#"
echo -e "#====================================================================#\n"

read -p "Enter an integer for the multiplication table: " NUM
echo 

if [[ $NUM =~ ^[+-]?[1-9][0-9]*$ ]]
    then 
        prompt_table_type
elif
    [[ $NUM == "q" ]]
    then 
    exit  

else 
    while $input_prompt
    do 
    read -p "${NUM} is not a valid integer. Enter a valid integer (or q to quit): " NUM
    echo 
    
    if [[ $NUM =~ ^[+-]?[1-9][0-9]*$ ]]
    then 
        prompt_table_type
        break

    elif [[ $NUM == "q" ]] 
    then
    exit 
    
    else  
        continue
    fi
    done

fi

done

}

#===========================================================
# INIT PROGRAM
#===========================================================

# This function calls the first code to start program execution
init_program() {

input_prompt

}


#===========================================================
# RUN THE PROGRAM
#===========================================================

# This function runs the program
init_program