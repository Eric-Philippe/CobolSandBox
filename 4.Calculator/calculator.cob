       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculator.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1           PIC 9(5).
       01 Num2           PIC 9(5).
       01 Operator       PIC X.
       01 Result         PIC 9(10).
       01 Choice         PIC X.

       PROCEDURE DIVISION.
       Display-Instructions.
           DISPLAY "---------------------------------------"
           DISPLAY "Bienvenue dans la calculatrice en COBOL."
           DISPLAY "Entrez 'x' pour quitter."
           DISPLAY "---------------------------------------"
           DISPLAY "Entrez un premier nombre : "
           ACCEPT Num1
           IF Num1 = 'x' OR Num1 = 'X' THEN
               STOP RUN
           END-IF
           DISPLAY "Entrez un opérateur (+, -, *, /) : "
           ACCEPT Operator
           IF Operator = 'x' OR Operator = 'X' THEN
               STOP RUN
           END-IF
           DISPLAY "Entrez un deuxième nombre : "
           ACCEPT Num2
           IF Num2 = 'x' OR Num2 = 'X' THEN
               STOP RUN
           END-IF
           PERFORM Calculate
           DISPLAY "Le résultat est : " Result
           DISPLAY "Voulez-vous faire un autre calcul ? (O/N) : "
           ACCEPT Choice
           IF Choice = 'O' OR Choice = 'o' THEN
               PERFORM Display-Instructions
           ELSE
               STOP RUN
           END-IF.

       Calculate.
           COMPUTE Result = 0
           IF Operator = '+' THEN
               COMPUTE Result = Num1 + Num2
           ELSE IF Operator = '-' THEN
               COMPUTE Result = Num1 - Num2
           ELSE IF Operator = '*' THEN
               COMPUTE Result = Num1 * Num2
           ELSE IF Operator = '/' THEN
               IF Num2 = 0 THEN
                   DISPLAY "Division par zéro impossible."
                   STOP RUN
               ELSE
                   COMPUTE Result = Num1 / Num2
               END-IF
           ELSE
                DISPLAY "Opérateur invalide."
                STOP RUN
           END-IF.

       END PROGRAM Calculator.           
