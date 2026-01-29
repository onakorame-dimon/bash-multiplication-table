# Bash Multiplication Table

### Darey.io capstone project 

**Description: Bash Script For Generating a Multiplication Table**

__Objective:__ Create a Bash script that generates a multiplication table for a number entered by the user. 


__Project Description:__

Your script should prompt the user to enter a number and then ask if they prefer to see the multiplication table from 1 to 10 or a partial table within a specified range. 

Based on the user's choice, the script will display the corresponding multiplication table.

__Project Requirements__

__User Input for Number:__ The script must first ask the user to input a number for which multiplicatin table will be generated. 

__Choice of Table range:__ Next, ask the user if they want a full multiplcation table (1 to 10) or a partial table. If they choose partial, prompt them for the start and end of the range. 

__Use of Loops:__ Implement the logic to generate the multiplication table using loops. You may use either the list form or C-style for loop based on what's appropriate. 

__Conditional Logic:__ Use if-else statements to handle the logic based on the user's choice (full vs partial table and valid range input).

__Input Validation:__ Ensuer that the user enters valid numbers for the multiplication table and the specified range. Provide feedback for invalid inputs and default to a full table if the range is incorrect. 

__Readable Output:__ Display the multiplication table in a clear and readable format, adhering to the user's choice of range. 

__Comments and Code Quality:__ Your script should be well-commented, explaining the purpose of different sections and any important variables or logic used. Ensuer the code is neatly formatted for easy readability. 


__Example Script Flow:__ 

1. Prompt the user to enter a nubmer for the multliplication table. 
2. Ask if they want a full table or partial table. 
	- If partail, prompt for the start and end numbers of the range. 
3. Validate the range inputs and handle invalid or out-of-bound enteries. 
4. Generate and display the multiplication table according to the specified range.
5. Provide clear output formatting for ease of reading. 

__Bonus__

6. Enhanced User Interaction: Incorporate additional checks or features, like repeating the program for another number without restarting the script. 
7. Creative Display Oprions: Offer different formatting styles for the table display and let the user choose. (descending or ascending order)

Below is an example output for a full multiplication: 

```
The full multiplication table for 3:

3 x 1 = 3
3 x 2 = 6
3 x 3 = 9
3 x 4 = 12
3 x 5 = 15
3 x 6 = 18
3 x 7 = 21
3 x 8 = 24
3 x 9 = 27
3 x 10 = 30
```

Below is an example outpult for a partial table display: 

 - If the user chooses a partial table: 

```
Enter a number for the multiplication table: 3

Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): p

Enter the starting number (between 1 and 10): 2

Enter the ending number (between 1 and 10): 4

The partial multiplication table for 3 from 2 to 4:
3 x 2 = 6
3 x 3 = 9
3 x 4 = 12
```

Handling Invalid Range If the user enters an invalid range: 

```
Enter a number for the multiplication table: 3
Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): p

Enter the starting number (between 1 and 10): 8

Enter the ending number (between 1 and 10): 2

Invalid range. Showing full table instead.
The full multiplication table for 3:
3 x 1 = 3
3 x 2 = 6
3 x 3 = 9
3 x 4 = 12
3 x 5 = 15
3 x 6 = 18
3 x 7 = 21
3 x 8 = 24
3 x 9 = 27
3 x 10 = 30
```





