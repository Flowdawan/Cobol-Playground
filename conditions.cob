       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. conditions.
AUTHOR. Florian Muellner.
DATE-WRITTEN.  11/02/2023.
DATE-COMPILED. 11/02/2023.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0.
       88 CanVote VALUE 1.
       88 CantCote VALUE 0.
01 TestNumber PIC X.
       88 IsPrime VALUE "1", "3", "5", "7".
       88 IsOdd VALUE "1", "3", "5", "7".
       88 IsEven VALUE "2", "4", "6", "8".
       88 LessThan5 VALUE "1" THRU "4".
       88 ANumber VALUE "0" THRU "9".
PROCEDURE DIVISION.
DISPLAY "Enter Age: " WITH NO ADVANCING
ACCEPT Age
*> Yeah in austria you can vote with the age of 16...
IF Age >= 16 THEN
       DISPLAY "You can vote"
ELSE
       DISPLAY "You can't vote"
END-IF

*> <, =, >, >=, <=, You can also type 'LESS THAN' or 'EQUAL TO' 
IF Age LESS THAN 6 THEN
       DISPLAY "Lean Programming now"
END-IF
IF AGE IS EQUAL 8 THEN
       DISPLAY "Lean IT-Security now"
END-IF

IF Age > 5 AND Age < 18 THEN
       COMPUTE Grade = Age - 5
       DISPLAY "Go to Grade " Grade 
END-IF 
IF Age GREATER THAN OR EQUAL TO 19
       DISPLAY "Go to University"
END-IF 

*> Classification: 
IF Score IS PassingScore then
       DISPLAY "You Passed"
ELSE
       DISPLAY "You Failed"    
END-IF

*> Build in Classification: NUMERIC, ALPHABETIC, ALPHABETIC-UPPER/LOWER

IF Score IS NOT NUMERIC THEN
       DISPLAY "Not a Number, Score is: " Score
END-IF

IF Age > 18 THEN
       SET CanVote TO TRUE
ELSE 
       SET CanVote TO TRUE
END-IF
DISPLAY "Vote " CanVoteFlag

*> Here we test a loop
*> It will ask for a number until it is not a numeric number
*> With Evaluate we will check the condition
DISPLAY "Enter Single Number or X to Exit: "
ACCEPT TestNumber
PERFORM UNTIL NOT ANumber
       EVALUATE TRUE
           WHEN IsPrime DISPLAY "Prime"
           WHEN IsOdd DISPLAY "ODD"
           WHEN IsEven DISPLAY "Even"
           WHEN LessThan5 DISPLAY "Less than 5"
           WHEN OTHER DISPLAY "Default Action :)"
       END-EVALUATE
       ACCEPT TestNumber
END-PERFORM
STOP RUN.
