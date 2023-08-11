--1. **Basic Procedure Creation**
--    - Task: Create a procedure called `proc_display` that simply prints "Hello from Procedure!".
set serveroutput on
create or replace procedure proc_display as
begin
  DBMS_OUTPUT.PUT_LINE('Hello from Procedure!');
end;

--2. **Procedure with Parameter**
--    - Task: Create a procedure `proc_greet` that takes a `v_name` parameter and prints "Hello, [v_name]!".

create or replace procedure proc_greet(v_name VARCHAR2) is
begin
  DBMS_OUTPUT.PUT_LINE('Hello, [v_name]!');
end;


--3. **Function Returning Number**
--    - Task: Create a function `func_square` that takes a number as an argument and returns its square.

create or replace function func_square(p_number NUMBER) return number is square number;
begin
    square:=p_number*p_number;
  RETURN square;
end ;

--4. **Function with String Manipulation**
--    - Task: Write a function `func_upper` that takes a string and returns its uppercase version.

create or replace function func_upper(p_name VARCHAR2) RETURN varchar2 is return_upper varchar2(100);
begin
    return_upper:=upper(p_name);
    RETURN return_upper;
end;

--5. **Procedure with Multiple Parameters**
--    - Task: Create a procedure `proc_fullname` that takes `v_firstName` and `v_lastName` as parameters and prints the full name.

create or replace procedure proc_fullname(v_firstName varchar2, v_lastName  varchar2) as
begin
  DBMS_OUTPUT.PUT_LINE(v_firstName || ' ' || v_lastName);
end;

--6. **Function with Conditional Logic**
--    - Task: Write a function `func_ageGroup` that takes an age as a parameter and returns 'Child' if age is less than 18, 'Adult' otherwise.
create or replace function func_ageGroup(p_age NUMBER) RETURN varchar2  is 
begin
    if p_age<18 then
  return 'child';
  else return 'adult';
  end if;
end;

--7. **Procedure Using Loop**
--    - Task: Create a procedure `proc_displayNumbers` that takes a number `n` and prints numbers from 1 to `n`.
create or replace procedure proc_displayNumbers(p_number number) is
begin
  for i in 1..p_number loop
    DBMS_OUTPUT.PUT_LINE(i);
  end loop;
end;


--8. **Function Using Arithmetic Operations**
--    - Task: Write a function `func_calculateArea` that takes the radius of a circle as an argument and returns its area.

create or replace function func_calculateArea(radius NUMBER) RETURN number as pi number:=3.14;
begin
  RETURN pi*radius*radius;
end;

--9. **Procedure with Exception Handling**
    -- Task: Create a procedure `proc_divide` that takes two numbers and prints their division result.
    --It should handle division by zero and print an error message for it.
create or replace procedure proc_divide(p_dividend number, p_divisor number) is
begin
    DBMS_OUTPUT.PUT_LINE(p_dividend/p_divisor);
EXCEPTION
   when zero_divide then
    DBMS_OUTPUT.PUT_LINE('Cannot divide by zero');
end;


--10. **Function with Date Operations**
-- Task: Write a function `func_daysDifference` that takes two dates as arguments and returns the number of days between them.
create or replace function func_daysDifference(start_date date, end_date date) RETURN number is between_days number;
begin
    between_days:=start_date-end_date;
  RETURN between_days;
end;
