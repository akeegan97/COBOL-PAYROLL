       identification division.
       program-id. main_1.
       environment division.
       data division.
       working-storage section.
       01 employee occurs 0 to 50 times depending on ws-counter.
               05 ws-emp-f-name pic x(12) .
               05 ws-emp-l-name pic x(12) .
               05 ws-emp-title pic x(25) .
               05 ws-emp-salary pic 9(12).
       01 ws-sal-exp pic 9(12)v9(2).
       01 ws-counter pic 9(2) value is 0.
       01 I pic 9(2) value is 0.
       01 ws-ans pic x(1).
       01 ws-pay-period pic 9(10)v9(2).
       01 ws-pp-out pic $$$,$$$,$$$.99 value is 0.
       01 ws-sal-tot pic $$$,$$$,$$$.99 value is 0.
       01 J pic 9(2) value is 0.
       procedure division.
  
       001-para.
           Display "*******************************************".
           Display "*       Welcome to The Staff Portal       *".
           Display "*******************************************".
           go to 002-para.
       002-para.
           Display "Add Employee Enter Y/N".
           accept ws-ans.
           go to 003-para.
       003-para.
           if ws-ans = 'y' or 'Y'
               add 1 to ws-counter
               go to 004-para
           else    
               go to 005-para.
       004-para.
           Display "Enter Employee's First Name: ".
           accept ws-emp-f-name(ws-counter)
           display "Enter Employee's Last Name: ".
           accept ws-emp-l-name(ws-counter)
           display "Enter Employee's Title: ".
           accept ws-emp-title(ws-counter)
           display "Enter Employee's Salary: ".
           accept ws-emp-salary(ws-counter)

           go to 002-para.
       005-para.
           perform 006-para until I > ws-counter
           go to 008-para.
       006-para.
           compute ws-sal-exp = ws-sal-exp + ws-emp-salary(I)
           add 1 to I.
       007-para.
           move ws-sal-exp to ws-sal-tot
           compute ws-pay-period = (ws-sal-exp / 26) 
           
           move ws-pay-period to ws-pp-out
           Display "Total Salary Expense: " ws-sal-tot
           Display "Expense Per Pay Period: " ws-pp-out
           go to 011-para.
       008-para.
           Display "Current Staff: ".
           go to 009-para.
       009-para.
           perform 010-para until J > ws-counter
           go to 007-para.
       010-para.
           Display employee(J)
           add 1 to J.
       011-para.
           stop run.
           
               
           


           
           



       