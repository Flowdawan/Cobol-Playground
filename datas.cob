       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. datas.
AUTHOR. Florian Muellner.
DATE-WRITTEN.  11/02/2023.
DATE-COMPILED. 11/02/2023.
ENVIRONMENT DIVISION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 SampleData  PIC X(10) VALUE "Stuff".
01 JustLetters PIC AAA VALUE "ABC".
01 JustNums    PIC 9(4) VALUE 1234.
01 SignedInt   PIC S9(4) VALUE -1234.
01 PayCheck    PIC 9(4)V99 VALUE ZEROS.
*> V99 stands for the decimals 
01 Customer.
       02 Ident    PIC 9(3).
       02 CustName PIC X(20).
       02 DateOfBirth.
           03 MOB  PIC 99.
           03 DOB  PIC 99.
           03 YOB  PIC 9(4).
PROCEDURE DIVISION.
MOVE "More Stuff" TO SampleData
DISPLAY "After move 'More Stuff' to SampleData: " SampleData
MOVE "123" TO SampleData
DISPLAY "After move '123' to SampleData: " SampleData
MOVE 123 TO SampleData
DISPLAY "After move 123 to SampleData: " SampleData
DISPLAY "PayCheck: " PayCheck
MOVE "123John Doe            02051997" TO Customer
DISPLAY "Customer Name: " CustName
DISPLAY MOB "/" DOB "/" YOB
MOVE ZERO TO SampleData
DISPLAY "ZERO: " SampleData
MOVE SPACE TO SampleData
DISPLAY "SPACE: " SampleData
MOVE HIGH-VALUE TO SampleData
DISPLAY "HIGH-VALUE: " SampleData
MOVE LOW-VALUE TO SampleData
DISPLAY "LOW-VALUE: " SampleData
MOVE QUOTE TO SampleData
DISPLAY "QUOTE: " SampleData
MOVE ALL "5" TO SampleData
DISPLAY "ALL 5's: " SampleData


STOP RUN.
