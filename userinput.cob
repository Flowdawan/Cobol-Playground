       IDENTIFICATION DIVISION.
       PROGRAM-ID. userinput.
       AUTHOR. Florian Muellner.
       DATE-WRITTEN.  09/02/2023.
       DATE-COMPILED. 09/02/2023.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
           01 UserName PIC X(30).
           01 Street PIC X(30).
           01 Country PIC X(25).
           01 SSNum.
              02 SSArea   PIC 999.
              02 SSGroup  PIC 99.
              02 SSSerial PIC 9999.
       PROCEDURE DIVISION.
           DISPLAY "What is your username? " WITH NO ADVANCING
            *> NO ADVANCING does that there is no newline after the display
           ACCEPT UserName
           DISPLAY "What is your Address? " 
           DISPLAY "Country? " WITH NO ADVANCING
           ACCEPT Country
           DISPLAY "Street? " WITH NO ADVANCING
           ACCEPT Street
           *> The length of the variables get filled with empty spaces
           DISPLAY "So, Hello " UserName "from " Street "in " Country
           DISPLAY "Enter your social security number "
           ACCEPT SSNum
           DISPLAY "Area 0" SSArea
       STOP RUN.
