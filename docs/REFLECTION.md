# Reflection

## What I Learned

Through this assignment, I learned how to use PL/SQL control flow
and user-defined functions in an Oracle database environment.

I practiced using GOTO statements with labels and learned how GOTO can
change the normal flow of a PL/SQL program. I also learned that GOTO
has restrictions and cannot jump into certain control structures.

The assignment also helped me understand how to create and use
functions in PL/SQL. I created functions for annual salary,
years of service, tax calculation, and department lookup.

## GOTO vs Structured Programming

GOTO can be useful for demonstrating control flow, but it can make
programs more difficult to read and maintain when used excessively.

Structured programming using IF/ELSE statements is generally easier
to understand because the logic follows a clear and predictable flow.

For this reason, I found the A4 rewrite without GOTO easier to read
than the original GOTO-based version.

## Functions

The functions allowed me to separate specific calculations and
operations into reusable pieces of code.

For example, the annual salary function can be reused for different
employees without repeating the calculation.

The department function also demonstrated how a PL/SQL function can
retrieve information from database tables.

## Testing

I tested the functions individually and also used them together inside
a SQL SELECT statement.

I also created tests for the payroll validation function. The tests
included a valid employee and an employee ID that does not exist.

The tests helped confirm that the functions returned the expected
results.

## Challenges

One challenge was understanding why the illegal GOTO example failed.
The error demonstrated that a GOTO statement cannot jump into certain
PL/SQL blocks.

Another challenge was enabling DBMS_OUTPUT in Oracle SQL Developer so
that the output from PL/SQL programs could be viewed.

These challenges helped me understand both PL/SQL rules and the
Oracle SQL Developer environment better.

## Final Thoughts

This assignment improved my understanding of PL/SQL programming,
control flow, functions, SQL queries, and testing.

I also learned the importance of organizing database code into
separate files and testing each part of the project before submission.

## AI Usage

AI tools were used for guidance, code drafting, explanations, and
troubleshooting during the assignment. I reviewed and tested the code
in Oracle SQL Developer and adapted it to my Airport Employee
Management System scenario.