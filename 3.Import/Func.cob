       IDENTIFICATION DIVISION.
       PROGRAM-ID. MyFunction.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01 Num1            PIC 9(5).
       01 Num2            PIC 9(5).
       01 MyResult        PIC 9(5).
       
       PROCEDURE DIVISION USING Num1 Num2 MyResult.
           COMPUTE MyResult = Num1 + Num2.
           EXIT PROGRAM.
