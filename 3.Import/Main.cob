       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1            PIC 9(5) VALUE 10.
       01 Num2            PIC 9(5) VALUE 20.
       01 Result          PIC 9(10).
       
       PROCEDURE DIVISION.
           CALL 'MyFunction' USING Num1 Num2 Result.
           DISPLAY "Le résultat est : " Result.
           STOP RUN.
