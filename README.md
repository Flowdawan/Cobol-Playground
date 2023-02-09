## **COBOL Playground**

COBOL stands for Common Business Oriented Language. It is imperative, procedural, and object-oriented. COBOL was invented in the late 1950s. COBOL is a standard language that can be compiled and executed on machines such as IBM AS/400, personal computers, etc. COBOL was designed for business-oriented applications related to financial domain, defense domain, etc. It can handle huge volumes of data because of its advanced file handling capabilities.

**My intention** was just to play around with COBOL. So my setup was just Visual Studio Code with a COBOL extension for highlighting

Compiling with wsdl2 on Windows and “gnucobol” installed.  This transpiles our COBOL program called 'hello.cob' to C then it takes the C and produces an executable object/bytecode file called ‘hello’. Then hitting the command:

    cobc -x hello.cob

to compile and excecute it for example with:

    ./hello

Good free cheat-cheet to get started: https://www.newthinktank.com/2020/04/learn-cobol-one-video/


WORKING-STORAGE SECTION.
*> Can hold a alphanumeric with max length
*> of 30 and starting value You
01 UserName PIC X(30) VALUE "You".

*> Declare a single digit integer between 0-9 
*> with a starting value of 0
*> ZEROS is a constant equal to 0
01 Num1    PIC 9   VALUE ZEROS.
01 Num2    PIC 9   VALUE ZEROS.

*> Double digit int between 0-99 with starting 
*> value of 0
01 Total     PIC 99  VALUE 0.

*> Hierarchal variable
01 SSNum.
       02 SSArea   PIC 999.
       02 SSGroup  PIC 99.
       02 SSSerial PIC 9999.