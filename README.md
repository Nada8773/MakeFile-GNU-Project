
## Make Tool

#### Error Parser
- make the compiler generate warnings on all operations By Writing regular expressions
  for parse errors and parse warnings .
  
  ![Image](https://raw.githubusercontent.com/Nada8773/Make-GNU-Project/master/Image/WarningError3.PNG)
  
  ![Image](https://raw.githubusercontent.com/Nada8773/Make-GNU-Project/master/Image/WarningError2.PNG)
  
#### ProgressBar
- Output from CMD

  ![Image](https://raw.githubusercontent.com/Nada8773/Make-GNU-Project/master/Image/m2.PNG)

- Output from eclipse
  - The 1st capturing group is the progress bar
  - The 2nd capturing group is the progress percentage written after the progress bar
  
  ![Image](https://raw.githubusercontent.com/Nada8773/Make-GNU-Project/master/Image/m4.PNG) 

- Configurations 

  ![Image](https://raw.githubusercontent.com/Nada8773/Make-GNU-Project/master/Image/bar.PNG) 


## Requirement
  1.  Implement make tool .
  2.  Integrating the make file with Eclipse.
  3. Add a new Parser error in Eclipse .
  4. Add Progressbar Model.
     - Progress Bar Model construction
       - Write file progress.bat to
       - read the value stored in progress.txt if it exists
       - Increment the read value
       - Store the new value in file progress.txt
       - If the file “progress.txt” does not exist then the batch file shall create it and write the value ‘1’ to it
       - End your script with an exit command
     - Step 1.2 Progress Bar View Construction
       - Write file progress.py to
       - Import the library progressBar.py (http://code.activestate.com/recipes/578228-progress-bar-class/
       - Read the input argument passed to progress.py which represents the maximum number for the progress bar
       - Don’t forget to validate your inputs (i.e the arguments passed to progress.py ), if not valid print 'usage: progress.py MAXSIZE'
       - Read the stored value in progress.txt
       - Draw the progress bar with value stored in progress.txt
     - Step 1.3 Progress Bar Controller Construction
       - Edit file makefile to
       - Call progress.bat each time it generates a file (Hint when calling the batch script use cmd /K "progress.bat").
       - Construct a variable containing all the files that the make file generates (i.e object files, dependency files, final application)
       - Call progress.py each time it generates a file with input argument “the number of all the files that the make file generates”
       - Reset the progress written in progress.txt (by writing 0) whenever you make clean or make all
