       IDENTIFICATION DIVISION.
       PROGRAM-ID. Input.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(50).
       
       PROCEDURE DIVISION.
           DISPLAY "Please enter your name: ".
           ACCEPT UserName.
           DISPLAY "Hello, " UserName "!"
           STOP RUN.
