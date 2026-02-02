
#Full table 
#==============================================
full_table() {
    
echo "The full multiplication table for 3: "    
        for ((i=1; i<=10; i++)) 
            do 
                product=$(( NUM * i ))
                echo "${NUM} x $i = ${product}" 
            done
}

#=========================================

#Partial Table


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
            echo -e "Invalid range (starting integer: $a ending integer: $b)"
            echo -e "Showing full table instead.\n"

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

p_table=true
while $p_table

do
    read -p "Enter a starting Integer (between 1 and 10): " a
    echo 

        #WIP: Add exit option  with an if 

        if ! [[ $a =~ ^[1-9][0-9]*$ ]] 
            then 

            while $p_table 
                do
                read -p "$a is not a valid integer, Enter a valid integer: " a
                    if  [[ $a =~ ^[1-9][0-9]*$ ]]
                        then 
                            if  (( $a < 1 || $a > 10 ))
                                then 
                                continue 2
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

# validate_ptable_input $b


p_table=true
while $p_table

do
    read -p "Enter an ending Integer (between 1 and 10): " b
    echo 

        #WIP: Add exit option  with an if 

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


prompt_table_type() {
prompt_type=true
while $prompt_type
    do
    read -p "Do you want a full table or a partial table? (Enter 'f' for full 'p' for partial): " TABLE_LEN
    echo

    if [[ $TABLE_LEN == "q" ]]
    then 
        exit 0 # 0,1 or empty?

    elif [[ $TABLE_LEN == "f" ]] #if TABLE_LEN is full, then full tab
    then 
            full_table 
            #prompt_type=false
            break
    elif [[ $TABLE_LEN == "p" ]] #If TABLE_LEN is part, then part tab
    then 
        partial_table
        #prompt_type=false
        break
    else
        while $prompt_type
        do
        read -p "Enter either p or f, or q to quit: "   TABLE_LEN

            if [[ $TABLE_LEN == "q" ]]
            then 
                exit 0 # 0,1 or empty?

            elif [[ $TABLE_LEN == "f" ]] #if TABLE_LEN is f, then full table
            then 
                    full_table
                    #prompt_type=false
                    break
                    break 2
            elif [[ $TABLE_LEN == "p" ]] #If TABLE_LEN is part, then part tab
            then 
                partial_table
                #prompt_type=false
                break
                break 2
            else
                continue
            fi
        done




    fi 
    done
}


input_prompt() {

input_prompt=true

while $input_prompt

do 

echo -e "Welcome to the Multiplication Table Generator.\n 
To begin, input a number. Enter the letter 'q' to quit.\n"

read -p "Enter an integer for the multiplication table: " NUM
echo 

if [[ $NUM =~ ^[+-]?[1-9][0-9]*$ ]]
    then 
        prompt_table_type
elif
    [[ $NUM == "q" ]]
    then 
    exit 0 # 0 or empty  

else 
    while $input_prompt
    do 
    read -p "${NUM} is not a valid integer. Enter a valid integer (or q to quit): " NUM
   
    if [[ $NUM =~ ^[+-]?[1-9][0-9]*$ ]]
    then 
        prompt_table_type
            
    elif [[ $NUM == "q" ]] 
    then
    exit 0
    
    else  
        continue
    fi
    done

fi

done

}




init_program() {

input_prompt

}

init_program