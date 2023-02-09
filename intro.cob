       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
*> The identification division contains information about the program. Like the name that is used to call for this programs code to execute. 
*> Also the authors name and date created.
PROGRAM-ID. intro.
AUTHOR. Florian Muellner.
DATE-WRITTEN. 02.09.2023
ENVIRONMENT DIVISION.
*> Environment contains environment info being the computer it is running on, devices available, country specific information.
DATA DIVISION.
*> Data describes the data and has 4 sections being the file, working-storage, linkage and report. 
FILE SECTION.
*> The File section describes data sent or received from storage.
WORKING-STORAGE SECTION.
*>  Working-storage defines variables in the program. Linkage defines data available to other programs. 
*> Report deals with generating reports.
01 UserName    PIC X(30) VALUE "Tom".
01 Num1    PIC 9 VALUE ZEROS.
01 Num2    PIC 9 VALUE ZEROS.
01 Total    PIC 99 VALUE 0.
01 SSNum.
       02 SSArea   PIC 999.
       02 SSGroup  PIC 99.
       02 SSSerial PIC 9999.
01 PIVALUE CONSTANT AS 3.1415.
       
PROCEDURE DIVISION.
DISPLAY "What is your name? " WITH NO ADVANCING
*> NO ADVANCING does that there is no newline after the display
ACCEPT UserName
DISPLAY "Hello " UserName

*> We fill the empty space of the variable of username with 0
MOVE ZERO TO UserName
DISPLAY UserName
DISPLAY "Enter 2 values to sum "
ACCEPT Num1
ACCEPT Num2
COMPUTE Total = Num1 + Num2
DISPLAY Num1 " + " Num2 " = " Total

DISPLAY "Enter your social security number "
ACCEPT SSNum
DISPLAY "Area 0" SSArea

DISPLAY "PI = " PIVALUE

*> every cobol program basically ends with >STOP RUN< and a newline after that
STOP RUN.
