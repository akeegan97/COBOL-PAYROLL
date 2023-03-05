       identification division.
       program-id. main_2.
       environment division.
       data division.
       working-storage section.
       01 ws-yes-no pic x(1).
       01 ws-sal pic 9(10) occurs 0 to 10 times depending on ws-counter.
       01 ws-counter pic S9(1) value is -0.
       01 I pic 9(1) value is 0.
       
       01 ws-sal-tot pic 9(10).
       
       procedure division.
       001-para.
           display "Add another employee: Y/N".
           accept ws-yes-no
               go to 002-para.
       002-para.
           if ws-yes-no = "Y"
               add 1 to ws-counter
                   go to 003-para
           else
            go to 004-para.
       003-para.
           Display "Enter Salary: ".
           accept ws-sal(ws-counter).
           go to 001-para.
       004-para.
           PERFORM 005-para until I > ws-counter
           go to 006-para.
       005-para.
           compute ws-sal-tot = ws-sal-tot + ws-sal(I)
           add 1 to I.
       006-para.
           Display "Total Salary Expense is: " ws-sal-tot
           Display "Value of I: " I
       stop run.