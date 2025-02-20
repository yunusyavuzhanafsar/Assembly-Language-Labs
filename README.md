# AssemblyLanguageProjects
## First Project :
Write a program that writes 5 numbers to memory by using
Register Indirect Addressing. Store your numbers at
memory addresses from 2000h to 2004h. In the end,
your memory must look like this:
<br><br>
![image](https://user-images.githubusercontent.com/42895382/156561544-6ee4eb38-d577-416d-b3bc-38845f584f0a.png)
<br><br>

## Second Project :
Write an assembly program which is able to write a given set of
characters in an array to another array in reverse order. For
example; if an array A is [‘c’ ‘e’ ‘n’ ‘g’] then array B must be [‘g’ ‘n’ ‘e’
‘c’].
<br><br>

## Third Project :
Write an assembly code that determines if a pre-defined number can be divided by 2, 3, 5 or 10. You can define the number as a variable in the code (e.g. “k db 15”). Your program must follow the steps below:

- You must define a number.
- Check if the number can be divided by 2, 3, 5 or 10.
- If the number can be divided any of the numbers mentioned above, it must print a message that includes the divisor number. (You must define a procedure for printing)
- If the number can be divided none of the numbers mentioned above, the program must exit without printing anything. 

EXAMPLE : If the defined number is 15, then the output must be as:
<br><br>
![image](https://user-images.githubusercontent.com/42895382/156782712-6b9cb98c-8e52-490f-8f3d-69c5b3f7edda.png)
<br><br>

## Sixth Project :

# 🔠 Alphabetical Comparison Program in Assembly  

This project is a text input program developed using Assembly language. It takes input from the user, compares it with a specific word, and prints characters that match certain letters in the alphabet.  

## 🚀 How to Run  

1. **Compile the code using an Assembly compiler (e.g., NASM or TASM).**  
2. **The code is designed to run in a DOS environment. Use DOSBox or a similar emulator.**  
3. **The program waits for user input.**  
4. **It compares the entered word with "TERMINATE".**  
5. **The comparison result is displayed on the screen.**  

## 🔍 Code Explanation  

- `alphabet` variable: Stores letters "A-Z" in memory.  
- `terminate` variable: Checks if the user input matches "TERMINATE".  
- `get_word` section: Takes input from the user.  
- `print` section: Compares the user input with the alphabet and prints the results.  
- `clear_loop`: Clears the allocated memory for new input.  

## 💻 Requirements  

- **DOS environment or DOSBox emulator**  
- **TASM (Turbo Assembler) or NASM compiler**  

## 📌 Example Execution  

```txt
ENTER INPUT: HELLO  
HELLO > H, E, L, L, O  


